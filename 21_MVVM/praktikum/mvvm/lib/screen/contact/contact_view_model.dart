import 'package:flutter/material.dart';
import 'package:mvvm/model/api/contact_api.dart';
import 'package:mvvm/model/contact_model.dart';

class ContactViewModel with ChangeNotifier {
  List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;

  getAllContact() async {
    final c = await ContactAPI.getContact();
    _contacts = c;
  }
}
