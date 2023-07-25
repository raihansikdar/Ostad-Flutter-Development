import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _productCodeController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _totalPriceController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  bool isProgress = false;

  void addProduct() async {
    isProgress = true;
    if(mounted){
      setState(() {
        
      });
    }
    Response response = await post(
        Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct"),
        headers: {'Content-type': 'application/json',},
        body: jsonEncode(
          {
            "Img": _imageController.text.trim(),
            "ProductCode": _productCodeController.text.trim(),
            "ProductName": _nameController.text.trim(),
            "Qty": _quantityController.text.trim(),
            "TotalPrice": _totalPriceController.text.trim(),
            "UnitPrice": _quantityController.text.trim(),
          },
        ));//post
      isProgress = false;
    if(mounted){
      setState(() { }); // importent part
    }
    // print(response.statusCode);
    // print(response.body);
    if (response.statusCode == 200) {
      final decodeBody = jsonDecode(response.body);
      if (decodeBody['status'] == 'success') {
        _nameController.clear();
        _imageController.clear();
        _productCodeController.clear();
        _priceController.clear();
        _totalPriceController.clear();
        _quantityController.clear();

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("New data Add sucessfull!!"),
            ),
          );
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("New Product add Failed"),
            ),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Product"),
        //  backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formState,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    hintText: "Name",
                  ),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Pease enter your name';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _productCodeController,
                  decoration: const InputDecoration(
                    hintText: "Product Code",
                  ),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Pease enter your Product Code';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _priceController,
                  decoration: const InputDecoration(
                    hintText: "price",
                  ),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Pease enter your price';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _quantityController,
                  decoration: const InputDecoration(
                    hintText: "Quantity",
                  ),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Pease enter your Quantity';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _totalPriceController,
                  decoration: const InputDecoration(
                    hintText: "Total Price",
                  ),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Pease enter your Total Price';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _imageController,
                  decoration: const InputDecoration(
                    hintText: "Image",
                    hintStyle: TextStyle(color: Colors.red),
                  ),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Pease enter your Image';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (formState.currentState!.validate()) {
                      addProduct();
                    }
                  },
                  child:isProgress ? const Center(child: CupertinoActivityIndicator(),) : const Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.grey,
                //   ),
                //   onPressed: () {},
                //   child: const Text(
                //     "Delete",
                //     style: TextStyle(color: Colors.white),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
