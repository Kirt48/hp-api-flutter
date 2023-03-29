import 'dart:convert';

class Character {
  Character({
    required this.id,
    required this.name,
    required this.species,
    required this.gender,
    required this.house,
    required this.wizard,
    required this.ancestry,
    required this.patronus,
    required this.hogwartsStudent,
    required this.hogwartsStaff,
    required this.actor,
    required this.alive,
    required this.image,
  });

  String id;
  String name;
  String species;
  String gender;
  String house;
  bool wizard;
  String ancestry;
  String patronus;
  bool hogwartsStudent;
  bool hogwartsStaff;
  String actor;
  bool alive;
  String image;
}
