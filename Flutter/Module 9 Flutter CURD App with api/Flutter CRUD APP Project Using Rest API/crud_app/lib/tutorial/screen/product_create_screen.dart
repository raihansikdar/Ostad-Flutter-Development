import 'package:crud_app/tutorial/style/style.dart';
import 'package:flutter/material.dart';

class ProductCreateScreen extends StatelessWidget {
  const ProductCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Page"),
      ),
      body: Stack(
        children: [
          screenBackground(context),
          SizedBox(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {},
                    decoration: appInputDecoration("Product Name"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (value) {},
                    decoration: appInputDecoration("Product Code"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (value) {},
                    decoration: appInputDecoration("Product Image"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  appDecoretedStyle(
                     DropdownButton(
                      value: "",
                      items: const [
                        DropdownMenuItem(child: Text("Select Qt"), value: ""),
                        DropdownMenuItem(child: Text("1 ps"), value: "1 ps"),
                        DropdownMenuItem(child: Text("2 ps"), value: "2 ps"),
                        DropdownMenuItem(child: Text("3 ps"), value: "3 ps"),
                        DropdownMenuItem(child: Text("4 ps"), value: "4 ps"),
                      ],
                      underline: Container(),
                      isExpanded: true,
                      onChanged: (valye) {},
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (value) {},
                    decoration: appInputDecoration("Unit Price"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (value) {},
                    decoration: appInputDecoration("Total Price"),
                  ),
                   const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: appButtonStyle(),
                    onPressed: (){}, 
                    child: successButtonChild("Submit"))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
