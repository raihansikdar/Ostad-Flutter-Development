import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact List',
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContactListScreen(),
    );
  }
}

class Contact {
  final String name;
  final String email;
  final String phoneNumber;

  Contact({
    required this.name,
    required this.email,
    required this.phoneNumber,
  });
}

class ContactListScreen extends StatefulWidget {
   const ContactListScreen({super.key});

  @override
  State<ContactListScreen> createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  final List<Contact> contacts = [
    Contact(
      name: 'John Doe',
      email: 'johndoe@gmail.com',
      phoneNumber: '01721021231',
    ),
    Contact(
      name: 'Jane Smith',
      email: 'janesmith@gmail.com',
      phoneNumber: '01721021232',
    ),
    Contact(
      name: 'Alice Johnson',
      email: 'alicejohnson@gmail.com',
      phoneNumber: '017210212323',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            title: Text(contact.name),
            onTap: () {
              _showContactDetails(context, contact);
            },
          );
        },
      ),
    );
  }

  void _showContactDetails(BuildContext context, Contact contact) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
               const Text('Contact Details',
               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
               ),
              const SizedBox(height: 16),
              Text('Name: ${ contact.name}'),
              const SizedBox(height: 8),
              Text('Email: ${contact.email}'),
              const SizedBox(height: 8),
              Text('Phone: ${contact.phoneNumber}'),
            ],
          ),
        );
      },
    );
  }
}
