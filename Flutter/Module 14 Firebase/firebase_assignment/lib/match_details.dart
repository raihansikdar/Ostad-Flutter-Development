import 'package:flutter/material.dart';

class MatchDetails extends StatelessWidget {
  const MatchDetails(
      {Key? key,
      required this.matchName,
      required this.teamAScore,
      required this.teamBScore,
      required this.timeFirstPart,
      required this.timeLastPart,
      required this.totalTimeFirstPart,
      required this.totalTimeLastPart})
      : super(key: key);

  final String? matchName;
  final int teamAScore;
  final int teamBScore;
  final int timeFirstPart;
  final int timeLastPart;
  final int totalTimeFirstPart;
  final int totalTimeLastPart;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Text(matchName ?? ''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(matchName ?? '',style: const TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.red),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(teamAScore.toString(),style: const TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                    const Text(" : ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    Text(teamBScore.toString(),style: const TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Time : $timeFirstPart",style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    const Text(":",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text(timeLastPart.toString(),style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Total Time : $totalTimeFirstPart",style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    const Text(":",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text(totalTimeLastPart.toString(),style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
