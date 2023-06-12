import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhotoGallery(),
    );
  }
}

class PhotoGallery extends StatelessWidget {
  PhotoGallery({super.key});
 final List<Map<String, String>> myItems = [
    {
      'img':
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      'img':
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      'img':
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      'img':
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      'img':
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      'img':
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
  ];

 final List<Map<String, String>> listTile = [
    {
      "img":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
      "title": "Simple Photo 1",
      "subTitle": "Category 1",
    },
    {
      "img":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
      "title": "Simple Photo 2",
      "subTitle": "Category 2",
    },
    {
      "img":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
      "title": "Simple Photo 3",
      "subTitle": "Category 3",
    },
  ];

  mySnackBar(context, message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo Gallery"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome to My Photo Gallery!",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,bottom: 20),
                child: GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: myItems.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Image.network(
                            myItems[index]['img'] ?? '',
                            fit: BoxFit.cover,
                          ),
                          Positioned.fill(
                            bottom: 0,
                            top: 75,
                            left: 10,
                            right: 10,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black.withOpacity(.2),
                              ),
                              onPressed: () {
                                mySnackBar(context, "Clicked on photo!");
                              },
                              child: const Text(
                                "Caption",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: listTile.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Image.network(listTile[index]["img"] ?? "",
                        height: 50, width: 50),
                    title: Text(
                      listTile[index]['title'] ?? "",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(listTile[index]['title'] ?? ""),
                  );
                },
              ),
        
              Positioned(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blue,
                    ),
                    child: IconButton(
                      onPressed: () {
                        mySnackBar(context, "Photos Uploaded Successfully!");
                      },
                      icon: Icon(Icons.cloud_upload, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
