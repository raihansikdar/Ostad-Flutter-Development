import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({super.key});

  mySnackbar(context, message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  myAlertDialog(context) {
    return showDialog(
      barrierDismissible: false,
      barrierColor: Colors.transparent,
        context: (context),
        builder: (BuildContext context) {
          return AlertDialog(
            //titlePadding: EdgeInsets.only(left: 0),
           // contentPadding: EdgeInsets.zero,
            icon: const Icon(Icons.add_alert_sharp),
            title: const Text("Alert !"),
            content: const Text("Do you want to delete"),
            backgroundColor: Colors.red,
            shadowColor: Colors.blue,
            actions: [
          TextButton(
            onPressed: () {
              mySnackbar(context, "Delete complete");
              Navigator.of(context).pop();
            },
            child: const Text("Yes"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("No"),
          ),
            TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Cancel"),
          ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            myAlertDialog(context);
          },
          child: const Text("Press"),
        ),
      ),
    );
  }
}
