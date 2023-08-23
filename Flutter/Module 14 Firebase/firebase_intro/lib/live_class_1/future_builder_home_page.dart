import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FutureBuilderHomePage extends StatefulWidget {
  const FutureBuilderHomePage({super.key});

  @override
  State<FutureBuilderHomePage> createState() => _FutureBuilderHomePageState();
}

class _FutureBuilderHomePageState extends State<FutureBuilderHomePage> {
  
  FirebaseFirestore firestore = FirebaseFirestore.instance;


 // Future<void> getDataFromFirebase() async {
  //   CollectionReference basketBallRef = firestore.collection('basketball');
  //   final DocumentReference docReference = basketBallRef.doc('1_ban_vs_Ind');
  //   final data = await docReference.get();
  //   print("=============>");
  //   print(data.data());
  //   final teamName = data.get('team_a');
  //   log(teamName);
  // }

  // @override
  // void initState() {
  //   getDataFromFirebase();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Builder home Page'),
      ),
      body: FutureBuilder(
          future: firestore.collection('basketball').doc('1_ban_vs_Ind').get(),
          //  builder: (context, AsyncSnapshot<DocumentSnapshot<Object?>> snapshot) {
          builder: (context, snapshot) {
            print("*******");
            print(snapshot.data?.data());
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              }
              if (snapshot.hasData) {
                final score = snapshot.data!;
                return Column(
                  children: [
                    const SizedBox(
                      height: 48.0,
                    ),
                    Text(
                      score.get('match_name'),
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              score.get('score_team_a'),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              score.get('team_a'),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                        const Text("VS"),
                        Column(
                          children: [
                            Text(
                              score.get('score_team_b'),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              score.get('team_b'),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                );
              } else {
                return const SizedBox();
              }
            }
            return const SizedBox();
            /*
             return Column(
              children: [
                const SizedBox(
                  height: 48.0,
                ),
                Text(
                  "Match name",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "12",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          "Team Name",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                    const Text("VS"),
                    Column(
                      children: [
                        Text(
                          "12",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          "Team Name",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            );
           
            */
          }),
    );
  }
}