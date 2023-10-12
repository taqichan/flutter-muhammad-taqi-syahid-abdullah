import 'package:aplikasi_19/contact.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 1),
                      blurRadius: 5.0,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ],
                ),
                child: TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your username',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 1),
                      blurRadius: 5.0,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ],
                ),
                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 19,
                    ),
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    saveUsername(usernameController.text);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ContactsPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(
                      0xfff79f00,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text('Login'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void saveUsername(String username) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', username);
  }
}
