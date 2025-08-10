import 'dart:math';

class Player {
  String name, position;
  int id;
  double power;
  int? age;
  String? nationality = 'Undifined';
  String? stamina = 'Undifined';
  String? skills = 'Undifined';

  Player({
    required this.id,
    required this.name,
    required this.position,
    this.age,
    this.nationality,
    this.stamina,
    this.skills,
  }) : power = Random().nextInt(101).toDouble();

  @override
  String toString() {
    return 'Player #$id: $name ($position) - Power: $power';
  }
}
