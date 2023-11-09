import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Contact {
  int id;
  String name;
  String phone;

  Contact({required this.id, required this.name, required this.phone});

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json['id'],
      name: json['name'],
      phone: json['email'],
    );
  }
}

Future<Contact> fetchContact() async {
  final dio = Dio();
  final response = await dio.get(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2');

  if (response.statusCode == 200) {
    return Contact.fromJson(response.data);
  } else {
    throw Exception('Gagal mengambil data');
  }
}

void result() async {
  try {
    Contact contact = await fetchContact();
    print('ID: ${contact.id}');
    print('Name: ${contact.name}');
    print('Phone: ${contact.phone}');
  } catch (e) {
    print('Error: $e');
  }
}

class JsonKeObject extends StatelessWidget {
  const JsonKeObject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: result,
            child: Text('Fetch Data'),
          ),
        ),
      ),
    ));
  }
}
