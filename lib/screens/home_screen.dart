import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 165,
                  child: ClipRect(
                    child: FadeInImage(
                      placeholder: AssetImage('assets/images/logo.png'),
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to the",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "HP-API",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 177, 59),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(25),
              child: SizedBox(
                child: Text(
                  'Project created by Beth and maintained by Kostas - feel free to get in touch. To see the code for this project, go to the GitHub repo - feel free to fork/clone the project for your own use.',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'characters'),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 255, 177, 59),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      width: (size.width - 80) / 2,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.face,
                              color: Color.fromARGB(255, 255, 177, 59),
                              size: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Personajes',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 177, 59),
                                    fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(
                      context,
                      'spell',
                      arguments: 'list-spell',
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(255, 255, 177, 59)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      width: (size.width - 80) / 2,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.auto_awesome,
                              color: Color.fromARGB(255, 255, 177, 59),
                              size: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Hechizos',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 177, 59),
                                    fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
