import 'package:aplikasi_17/model.dart';
import 'package:aplikasi_17/widget/header_contact.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../stores/contact.dart' as contact_store;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = '';
  String phoneNumber = '';
  var nameController = TextEditingController();
  var phoneNumbersController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    phoneNumbersController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_store.Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Book App'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Header(),
                TextField(
                  controller: nameController,
                  onChanged: (String value) {
                    name = value;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: 'Insert Your Name',
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: phoneNumbersController,
                  onChanged: (String value) {
                    phoneNumber = value;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nomor',
                    hintText: 'Insert Your Number',
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (!formKey.currentState!.validate()) return;

                    formKey.currentState!.save();

                    contactProvider.addContact(
                      GetContact(
                        name: name,
                        phoneNumber: phoneNumber,
                      ),
                    );
                  },
                  child: const Text('Submit'),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: contactProvider.contacts.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.black38, width: 1)),
                        title: Text(contactProvider.contacts[index].name),
                        subtitle:
                            Text(contactProvider.contacts[index].phoneNumber),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                Provider.of<contact_store.Contact>(
                                  context,
                                  listen: false,
                                ).deleteContact(
                                  name,
                                  phoneNumber,
                                );
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                String newName = nameController.text;
                                String newPhoneNumber =
                                    phoneNumbersController.text;
                                contactProvider.editContact(
                                    index, newName, newPhoneNumber);
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
