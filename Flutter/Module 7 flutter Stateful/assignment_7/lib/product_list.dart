import 'package:assignment_7/cart_page.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Map<String, dynamic>> myItems = [
    {"title": "Product 1", "price": "\$10", "count": 0},
    {"title": "Product 2", "price": "\$15", "count": 0},
    {"title": "Product 3", "price": "\$20", "count": 0},
    {"title": "Product 4", "price": "\$20", "count": 0},
    {"title": "Product 5", "price": "\$20", "count": 0},
    {"title": "Product 6", "price": "\$20", "count": 0},
    {"title": "Product 7", "price": "\$20", "count": 0},
    {"title": "Product 8", "price": "\$20", "count": 0},
    {"title": "Product 9", "price": "\$20", "count": 0},
    {"title": "Product 10", "price": "\$20", "count": 0},
    {"title": "Product 11", "price": "\$20", "count": 0},
    {"title": "Product 12", "price": "\$20", "count": 0},
    {"title": "Product 13", "price": "\$20", "count": 0},
    {"title": "Product 14", "price": "\$20", "count": 0},
    {"title": "Product 15", "price": "\$20", "count": 0},
  ];
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(myItems[index]['title']!),
            subtitle: Text(myItems[index]["price"]!),
            trailing: Column(
              children: [
                Text("Counter: ${myItems[index]['count']}"),
                SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      myItems[index]['count']++;

                      if (myItems[index]['count'] == 5) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Congratulations!'),
                                content: Text(
                                    "You've bought 5 ${myItems[index]['title']}!"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('OK'),
                                  )
                                ],
                              );
                            });
                      }
                      setState(() {});
                    },
                    child: const Text("Buy Now"),
                  ),
                ),
              ],
            ),
          );
        },
      ),
        floatingActionButton: FloatingActionButton(
  onPressed: () {
    num totalProducts = 0;
    for (var item in myItems) {
      totalProducts += item['count'];
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CartPage(totalProduct: totalProducts.toString()),
      ),
    );
  },
  child: const Icon(Icons.shopping_cart),
),

    );
  }
}
