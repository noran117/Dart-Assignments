import 'dart:math';

import 'Trainer.dart';
import 'player.dart';
import 'strategy.dart';

class Team {
  String name;
  Trainer trainer;
  List<Player> playersList;
  StrategyType strategy;
  String? mascot = 'Undifined', city = 'Undifined', teamColors = 'Undifined';
  double basePower; // PlayersList's power+ trainer's experience

  Team({
    required this.name,
    required this.trainer,
    required this.playersList,
    required this.strategy,
    this.mascot,
    this.city,
    this.teamColors,
  }) : basePower =
           playersList.fold(0.0, (sum, p) => sum + p.power) +
           trainer.experience;

  @override
  String toString() {
    return 'Team: $name\nTrainer: ${trainer.name}\nTotal Power: $basePower ';
  }

  double matchPowerAgainst(Team opponent) =>
      basePower +
      Strategy.getBonus(strategy, opponent.strategy) +
      (Random().nextDouble() * 10 - 5);
}
