import 'dart:math';

class Trainer {
  String name;
  double experience;
  String? strategy = 'Undifined';
  String? motivation = 'Undifined';

  Trainer({required this.name, this.strategy, this.motivation})
    : experience = Random().nextInt(101).toDouble();
  @override
  String toString() {
    return 'Trainer: $name - Experience: $experience';
  }
}
