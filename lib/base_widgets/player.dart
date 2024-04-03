import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  final int gameAim;
  final String playerName;
  final bool gameStarted;

  const Player(
      {super.key,
      required this.playerName,
      required this.gameAim,
      required this.gameStarted});

  @override
  State<StatefulWidget> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  int _points_scored = 0;
  int _point_left_to_score = 0;

  void _updateScore(int points) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _points_scored += points;
      _point_left_to_score = widget.gameAim - _points_scored;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          const Icon(
            Icons.person,
            color: Colors.green,
            size: 32.0,
            semanticLabel: 'User default icon',
          ),
          Text(
            widget.playerName,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ]),
        Text("Score : $_point_left_to_score")
      ],
    );
  }

  updateScoreForPlayer(int points){
    _updateScore(points);
  }
}
