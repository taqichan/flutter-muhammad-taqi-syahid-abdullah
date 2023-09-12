import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halo Alterra'),
        backgroundColor: const Color(0xFFE65100),
      ),
      body: const Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: 'Namaku '),
              TextSpan(text: 'Taqi ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              TextSpan(text: 'Syahid'),
            ]
          ),
        )
      )
    );
  }
}