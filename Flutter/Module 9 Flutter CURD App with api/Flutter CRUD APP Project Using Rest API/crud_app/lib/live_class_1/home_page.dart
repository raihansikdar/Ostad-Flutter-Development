import 'dart:convert';

import 'package:crud_app/live_class_1/add_new_product_screen.dart';
import 'package:crud_app/live_class_1/product_model.dart';
import 'package:crud_app/live_class_1/update_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductModel> products = [];
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    print("==>api call");
    getProducts();
  }

  void getProducts() async {
    isLoading = true;
    setState(() {});

    final Response response =
        await get(Uri.parse("https://crud.teamrabbil.com/api/v1/ReadProduct"));

    // print(response.statusCode);
    // print(response.body);
    final Map<String, dynamic> decodedResponse = jsonDecode(response.body);
    // print(decodedResponse.length);
    // print(decodedResponse['data'].length);

    if (response.statusCode == 200 && decodedResponse['status'] == 'success') {
      products.clear();
      for (var e in decodedResponse['data']) {
        products.add(ProductModel.toJson(e));
      }

      // decodedResponse['data'].forEach((e) {
      //   products.add(ProductModel(
      //     e['_id'],
      //     e['ProductName'],
      //     e['ProductCode'],
      //     e['Img'],
      //     e['UnitPrice'],
      //     e['Qty'],
      //     e['TotalPrice'],
      //     e['CreatedDate'],
      //   ));
      // });
    }
    isLoading = false;
    setState(() {});
    // print(products.length);
  }

  void deleteProduct(String? id) async {
    isLoading = true;
    if (mounted) {
      setState(() {});
    }

    Response response = await get(
        Uri.parse("https://crud.teamrabbil.com/api/v1/DeleteProduct/$id"));
    print(response.body);

    final Map<String, dynamic> decodedResponse = jsonDecode(response.body);

    if (response.statusCode == 200 && decodedResponse['status'] == 'success') {
      getProducts();

      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Delete successfull!")));
      }
    } else {
      isLoading = false;
      if (mounted) {
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CRUD App"),
        actions: [
          IconButton(
            onPressed: () {
              getProducts();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onLongPress: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            titlePadding: const EdgeInsets.only(left: 16.0),
                            contentPadding: const EdgeInsets.only(
                                left: 8.0, right: 8.0, bottom: 8.0),
                            title: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                    "Choose an action"), // Expanded diyeo spaceBetween kaj kora jai
                                const Spacer(),
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(Icons.close),
                                ),
                              ],
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return UpdateProductScreen(
                                          product: products[index]);
                                    }));
                                  },
                                  leading: const Icon(Icons.edit),
                                  title: const Text("Edit"),
                                ),
                                const Divider(height: 0),
                                ListTile(
                                  onTap: () {
                                    deleteProduct(products[index].id);
                                    Navigator.pop(context);
                                  },
                                  leading: const Icon(Icons.delete),
                                  title: const Text("Delete"),
                                )
                              ],
                            ),
                          );
                        });
                  },
                  leading: Image.network(
                    products[index].image ?? '',
                    width: 50,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.image,
                        size: 32,
                      );
                    },
                  ),
                  title: Text(products[index].productName ?? ''),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Product Code : ${products[index].productCode}"),
                      Text("Total Price: ${products[index].totalPrice}"),
                      Text("Available Units: ${products[index].quantity}"),
                    ],
                  ),
                  trailing: Text("Unit price : ${products[index].unitPrice}"),
                );
              },
              separatorBuilder: (context, index) => const Divider(
                thickness: 2,
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewProductScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
