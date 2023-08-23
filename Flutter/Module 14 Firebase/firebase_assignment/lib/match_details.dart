import 'package:flutter/material.dart';

class MatchDetails extends StatelessWidget {
  const MatchDetails(
      {super.key,
      this.matchName,
      required this.teamAScore,
      required this.teamBScore,
      required this.timeFirstPart,
      required this.timeLastPart,
      this.totalTime});

  final String? matchName;
  final int teamAScore;
  final int teamBScore;
  final int timeFirstPart;
  final String? timeLastPart;
  final String? totalTime;



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
                    const Text(" : ",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                    Text(teamBScore.toString(),style: const TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Time : $timeFirstPart",style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    const Text(":",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("$timeLastPart",style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
                  ],
                ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Total Time : ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                      Text("$totalTime",style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
                    ],
                  )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
