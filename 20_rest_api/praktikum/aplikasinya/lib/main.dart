import 'package:aplikasinya/json_ke_object.dart';
import 'package:aplikasinya/req_post.dart';
import 'package:aplikasinya/req_put.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: MaterialApp(
      home: Scaffold(
        body: ReqPut(),
      ),
    ));
  }
}
