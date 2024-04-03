import 'package:flutter/material.dart';

class StatelessPlayer extends StatelessWidget{

  const StatelessPlayer(
      {super.key,
      required this.playerName,
      required this.score});

  final int score;
  final String playerName;

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
            playerName,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ]),
        Text("Score : $score")
      ],
    );
  }
  }
  
