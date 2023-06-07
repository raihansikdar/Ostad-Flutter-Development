import 'package:flutter/material.dart';

class NavigationDrawerPage extends StatelessWidget {
  const NavigationDrawerPage({super.key});

  mySnackbar(context, message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Drawer"),
        backgroundColor: Colors.red,
        elevation: 4,
        actions: [
          IconButton(
            onPressed: () {
              mySnackbar(context, "This is masssage");
            },
            icon: const Icon(Icons.message),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
           const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage(
                  "https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w=",   
                ),
                fit: BoxFit.cover,
                ),
              ),
              child: Text("Raihan"),
            ),

            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.account_box),
              title: const Text("About"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.grid_3x3_outlined),
              title: const Text("Products"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text("Contact"),
              onTap: () {},
            )
          ],
        ),
      ),


      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mySnackbar(context, "Floating action button");
        },
        child: const Icon(Icons.add),
      ),
      
      bottomNavigationBar: BottomAppBar(
          child: BottomNavigationBar(
        backgroundColor: Colors.blue[200],
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        ],
        onTap: (int index) {
          if (index == 0) {
            mySnackbar(context, "Home");
          } else if (index == 1) {
            mySnackbar(context, "Message");
          } else {
            mySnackbar(
              context,
              "Person",
            );
          }
        },
      )),
    );
  }
}
