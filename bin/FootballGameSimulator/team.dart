import 'Trainer.dart';
import 'player.dart';

class Team {
  String _name;
  Trainer _trainer;
  List<Player> playerList;
  Team(this._name, this._trainer, this.playerList);
}
