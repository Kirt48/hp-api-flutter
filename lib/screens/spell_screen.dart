import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hp_app/models/spell_model.dart';
import 'package:http/http.dart';

class SpellScreen extends StatefulWidget {
  const SpellScreen({super.key});

  @override
  State<SpellScreen> createState() => _SpellScreenState();
}

class _SpellScreenState extends State<SpellScreen> {
  final url = Uri.parse('https://hp-api.onrender.com/api/spells');

  List<Spell> spells = [];

  @override
  void initState() {
    _loadAllSpells();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (spells.isEmpty) {
      return SizedBox(
        width: double.infinity,
        height: size.height * 0.5,
        child: const Center(
          child: CircularProgressIndicator(
            color: Color.fromARGB(255, 255, 177, 59),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              stretch: true,
              iconTheme: const IconThemeData(
                color: Color.fromARGB(255, 255, 177, 59),
              ),
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  collapseMode: CollapseMode.parallax,
                  title: const Text("Hechizos",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 177, 59),
                        fontSize: 16.0,
                      )),
                  background: Image.asset(
                    'assets/images/spells.png',
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: ListView.separated(
          separatorBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              thickness: 1,
              color: Color.fromARGB(255, 255, 177, 59),
            ),
          ),
          itemCount: spells.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                spells[index].name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 177, 59),
                ),
              ),
              subtitle: Text(
                spells[index].description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _loadAllSpells() async {
    final response = await get(url);

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final data = jsonDecode(body);
      for (var i in data) {
        setState(() {
          spells.add(
            Spell(
              id: i['id'],
              name: i['name'],
              description: i['description'],
            ),
          );
        });
      }
    }
  }
}
