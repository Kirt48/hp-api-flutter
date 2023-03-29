import 'dart:convert';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../models/character_model.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  final url = Uri.parse('https://hp-api.onrender.com/api/characters');

  List<Character> characters = [];

  @override
  @override
  void initState() {
    _loadAllCharacters();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (characters.isEmpty) {
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
                expandedHeight: 520.0,
                floating: false,
                pinned: true,
                stretch: true,
                iconTheme: const IconThemeData(
                  color: Color.fromARGB(255, 255, 177, 59),
                ),
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    collapseMode: CollapseMode.parallax,
                    title: const Text("Hechiceros",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 177, 59),
                          fontSize: 16.0,
                        )),
                    background: Image.asset(
                      'assets/images/spells2.png',
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 1,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(characters.length, (index) {
              return Center(
                  child: FlipCard(
                direction: FlipDirection.HORIZONTAL, // default
                front: GestureDetector(
                  onDoubleTap: () => Navigator.pushNamed(context, 'details',
                      arguments: characters[index]),
                  child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 30),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(
                                      color: Color.fromARGB(255, 255, 177, 59),
                                      width: 3),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(25))),
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                        "Doble clic para abir informacion detallada",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 177, 59),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 300,
                                    child: Image.network(
                                      characters[index].image.isEmpty ||
                                              characters[index].image == ""
                                          ? 'https://t3.ftcdn.net/jpg/04/62/93/66/360_F_462936689_BpEEcxfgMuYPfTaIAOC1tCDurmsno7Sp.jpg'
                                          : characters[index].image,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Text(
                                      "#${index + 1} ${characters[index].name}",
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ),
                back: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 30),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 350,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(
                                    color: Color.fromARGB(255, 255, 177, 59),
                                    width: 3),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(25))),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                  child: Text(
                                    "Hechicero #${index + 1}",
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 177, 59),
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                  child: Text(
                                    "Nombre: ${characters[index].name}",
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 177, 59),
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                  child: Text(
                                    "Genero: ${characters[index].gender == "Male" ? "Masculino" : "Femenino"}",
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 177, 59),
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                  child: Text(
                                    "Casa: ${characters[index].house}",
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 177, 59),
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                  child: Text(
                                    "Actor: ${characters[index].actor}",
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 177, 59),
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                  child: Text(
                                    "Estado: ${characters[index].alive == true ? "Vivo" : "Muerto"}",
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 177, 59),
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ));
            }),
          )),
    );
  }

  void _loadAllCharacters() async {
    final response = await get(url);

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final data = jsonDecode(body);
      for (var i in data) {
        setState(() {
          characters.add(
            Character(
              id: i['id'],
              name: i['name'],
              species: i['species'],
              gender: i['gender'],
              house: i['house'],
              wizard: i['wizard'],
              ancestry: i['ancestry'],
              patronus: i['patronus'],
              hogwartsStudent: i['hogwartsStudent'],
              hogwartsStaff: i['hogwartsStaff'],
              actor: i['actor'],
              alive: i['alive'],
              image: i['image'],
            ),
          );
        });
      }
    }
  }
}
