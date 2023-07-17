import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News Feed"),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.white,
                 // height: 50,
                 width: 50,
                  child: Card(
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBYGfccwpurI-OTsRpv7D-pk2bNmUHEwdNy56R463rA3HOZhd5",
                    ),
                  ),
                );
              },
            );
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 200,
                      child: Card(
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBYGfccwpurI-OTsRpv7D-pk2bNmUHEwdNy56R463rA3HOZhd5",
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
