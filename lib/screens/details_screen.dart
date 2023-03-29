import 'package:flutter/material.dart';
import 'package:flutter_hp_app/models/character_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final dynamic character =
        ModalRoute.of(context)?.settings.arguments ?? 'no-character';
    return Scaffold(
      appBar: AppBar(
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 255, 177, 59)),
        title: const Text(
          "Detalles del hechicero",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 177, 59),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(200)),
                          border: Border.all(
                              width: 3,
                              color: Color.fromARGB(255, 255, 177, 59))),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(character.image),
                          radius: 150,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      character.name,
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 177, 59),
                          fontSize: 30),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 255, 177, 59)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        width: (size.width - 40) / 2,
                        height: 70,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.man,
                                color: Color.fromARGB(255, 255, 177, 59),
                                size: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "Genero",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                    Text(
                                      character.gender != "Male"
                                          ? "Masculino"
                                          : "Femenino",
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 255, 177, 59)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        width: (size.width - 40) / 2,
                        height: 70,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.supervised_user_circle,
                                color: Color.fromARGB(255, 255, 177, 59),
                                size: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "Especie",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                    Text(
                                      character.species != "Human"
                                          ? "Humano"
                                          : "Otro",
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 255, 177, 59)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        width: (size.width - 40) / 2,
                        height: 70,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.house,
                                color: Color.fromARGB(255, 255, 177, 59),
                                size: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "Casa",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                    Text(
                                      character.house,
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 255, 177, 59)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        width: (size.width - 40) / 2,
                        height: 70,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.stars,
                                color: Color.fromARGB(255, 255, 177, 59),
                                size: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "¿Hechicero?",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                    Text(
                                      character.wizard == true ? "Si" : "No",
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 255, 177, 59)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        width: (size.width - 40) / 2,
                        height: 70,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.help,
                                color: Color.fromARGB(255, 255, 177, 59),
                                size: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "Ancestro",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                    Text(
                                      character.ancestry,
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 255, 177, 59)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        width: (size.width - 40) / 2,
                        height: 70,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.school,
                                color: Color.fromARGB(255, 255, 177, 59),
                                size: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "¿Alumno Hogwarts?",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                    Text(
                                      character.hogwartsStudent == true
                                          ? "Si"
                                          : "No",
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 255, 177, 59)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        width: (size.width - 40) / 2,
                        height: 70,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.auto_fix_normal,
                                color: Color.fromARGB(255, 255, 177, 59),
                                size: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "Patronus",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                    Text(
                                      character.patronus,
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 255, 177, 59)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        width: (size.width - 40) / 2,
                        height: 70,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.grade_outlined,
                                color: Color.fromARGB(255, 255, 177, 59),
                                size: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "¿Maestro Hogwarts?",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                    Text(
                                      character.hogwartsStaff == true
                                          ? "Si"
                                          : "No",
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 255, 177, 59)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        width: (size.width - 40) / 2,
                        height: 70,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 255, 177, 59),
                                size: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "Actor",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                    Text(
                                      character.actor,
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 255, 177, 59)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        width: (size.width - 40) / 2,
                        height: 70,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.playlist_add_check_circle,
                                color: Color.fromARGB(255, 255, 177, 59),
                                size: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "Estado",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                    Text(
                                      character.alive == true
                                          ? "Vivo"
                                          : "Muerto",
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 177, 59),
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
