import 'package:flutter/material.dart';
import 'package:mvvm/screen/contact/contact_view_model.dart';
import 'package:provider/provider.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Provider.of<ContactViewModel>(context, listen: false).getAllContact();
  }

  Widget build(BuildContext context) {
    final modelView = Provider.of<ContactViewModel>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Contact'),
        ),
        body: ListView.builder(
          itemCount: modelView.contacts.length,
          itemBuilder: (context, index) {
            final contact = modelView.contacts[index];
            return ListTile(
              title: Text(contact.name),
              subtitle: Text(contact.phone),
            );
          },
        ));
  }
}
