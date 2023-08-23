import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_assignment/match_details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

   //final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('football_match').snapshots();
   FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Match List"),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestore.collection('football_match').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Text('No data available');
          }
          return ListView.builder(
               itemCount: snapshot.data!.docs.length,
               itemBuilder: (context,index){

                  return ListTile(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => MatchDetails(
                                    matchName: snapshot.data!.docs[index]['match_name'],
                                    teamAScore: snapshot.data!.docs[index]['team_a_score'],
                                    teamBScore: snapshot.data!.docs[index]['team_b_score'],
                                    timeFirstPart: snapshot.data!.docs[index]['time_first_part'],
                                    timeLastPart: snapshot.data!.docs[index]['time_last_part'],
                                    totalTime: snapshot.data!.docs[index]['total_time']
                                  )));
                    },
                    title: Text(snapshot.data!.docs[index]['match_name'],style: Theme.of(context).textTheme.titleLarge,),
                    trailing: const Icon(Icons.arrow_right_alt_outlined,size: 30,),
                  );

              });
        }
      ),
    );
  }
}
