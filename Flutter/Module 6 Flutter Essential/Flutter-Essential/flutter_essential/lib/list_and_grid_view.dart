import 'package:flutter/material.dart';

class ListAndGridViewBuilderPage extends StatelessWidget {
  ListAndGridViewBuilderPage({super.key});

 final List<Map<String, String>> myItem = [
    {
      'img':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
      'title': 'Raihan'
    }, 
    {
      'img':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
      'title': 'Afridi'
    },
    {
      'img':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
      'title': 'Mamun'
    },
    {
      'img':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
      'title': 'Rafsan'
    },
    {
      'img':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
      'title': 'Raihan'
    },
    {
      'img':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
      'title': 'Afridi'
    },
    {
      'img':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
      'title': 'Mamun'
    },
    {
      'img':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
      'title': 'Rafsan'
    },
  ];

  mySnackbar(context, message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewBuilderPage"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
                ),
              itemCount: myItem.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    mySnackbar(context, myItem[index]['title']);
                  },
                  child: Container(
                   // margin: const EdgeInsets.all(20),
                    height: 200,
                    width: double.infinity,
                    child: Image.network(
                      myItem[index]['img'] ?? "No Image Fetch",
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            ),
        
          SizedBox(height: 20,),
         
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              // physics: NeverScrollableScrollPhysics(),
              itemCount: myItem.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    mySnackbar(context, myItem[index]['title']);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    height: 200,
                    width: double.infinity,
                    child: Image.network(
                      myItem[index]['img'] ?? "No Image Fetch",
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            ),
        
          ],
        ),
      ),
    );
  }
}
