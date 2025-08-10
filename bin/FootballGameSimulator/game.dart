import 'dart:io';
import 'dart:math';
import 'team.dart';
import 'Trainer.dart';
import 'strategy.dart';
import 'player.dart';
import 'stadium.dart';

void main(List<String> args) {
  Team createTeam() {
    print('Team Creation:');
    print('Enter Team\'s name:');
    String teamName = stdin.readLineSync() ?? 'Invalid Name!';

    print('Enter the trainer name:');
    Trainer trainer1 = Trainer(name: stdin.readLineSync() ?? 'Invalid Name!');

    print('''Enter the number of your strategy type: 
    1. Offensive 
    2. Defensive
    3. Balanced
    4. CounterAttack
    5. Pressing
    6. ParkTheBus''');
    int strategyTypeNum = int.parse(stdin.readLineSync() ?? '0');
    StrategyType strategy =
        StrategyType.values[(strategyTypeNum > 0 &&
                strategyTypeNum <= StrategyType.values.length)
            ? strategyTypeNum - 1
            : 0];

    print('Enter the number of players:');
    int numPlayers = int.parse(stdin.readLineSync() ?? '0');
    List<Player> players = [];

    for (int i = 0; i < numPlayers; i++) {
      print('Player number ${i + 1}:');
      print('Enter Player\'s id:');
      int playerId = int.parse(stdin.readLineSync() ?? '0');
      print('Enter Player\'s name:');
      String playerName = stdin.readLineSync() ?? 'Invalid Name!';
      print('Enter Player\'s position:');
      String position = stdin.readLineSync() ?? 'Invalid Position!';
      players.add(Player(id: playerId, name: playerName, position: position));
    }
    return Team(
      name: teamName,
      trainer: trainer1,
      playersList: players,
      strategy: strategy,
    );
  }

  Team team1 = createTeam();
  Team team2 = createTeam();
  var power1 = team1.matchPowerAgainst(team2);
  var power2 = team2.matchPowerAgainst(team1);
  print('\nTeams were created successfully');

  print('\n\nStadium Creation:');
  print('Enter Stadium\'s name:');
  String stadiumName = stdin.readLineSync() ?? 'Invalid Name!';
  print('Enter Stadium\'s location:');
  String stadiumLocation = stdin.readLineSync() ?? 'Invalid Name!';
  Stadium stadium = Stadium(name: stadiumName, location: stadiumLocation);
  print('\nStadium was successfully created');

  print('\n\nGame have been Started in ${stadium.name} | ${stadium.location}');
  print('power points ${team1.name}: ${power1.toStringAsFixed(2)}');
  print('power points ${team2.name}: ${power2.toStringAsFixed(2)}');
  int scoreA = 0;
  int scoreB = 0;
  var events = <String>[];
  var rnd = Random();
  for (int minute = 1; minute <= 90; minute++) {
    double chanceA = power1 / (power1 + power2) * 0.05;
    double chanceB = power2 / (power1 + power2) * 0.05;
    if (rnd.nextDouble() < chanceA) {
      scoreA++;
      events.add('At minute $minute A Goal for ${team1.name}!');
    }
    if (rnd.nextDouble() < chanceB) {
      scoreB++;
      events.add('At minute $minute A Goal for ${team2.name}!');
    }
    if (rnd.nextDouble() < 0.01) {
      events.add('At minute $minute Yellow Card!');
    }
  }

  print('Game Events:');
  for (var e in events) {
    print(e);
  }

  print('Final Result:');
  print("${team1.name} $scoreA - $scoreB ${team2.name}");
  if (scoreA > scoreB) {
    print('The winner Team is: ${team1.name}');
  } else if (scoreB > scoreA) {
    print('The winner Team is: ${team2.name}');
  } else {
    print('The match ended in a draw');
  }
}
