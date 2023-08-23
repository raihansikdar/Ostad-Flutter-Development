import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatelessWidget {
  ListViewBuilderPage({super.key});

 List<Map<String, String>> myItem = [
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
      body: ListView.builder(
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
    );
  }
}
