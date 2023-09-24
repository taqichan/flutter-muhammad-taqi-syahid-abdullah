// INI DETAIL UNTUK SOAL PRIORITAS 1

import 'package:aplikasi_14/page/gallery.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Gallery();
                  },
                ),
              );
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(child: Image.asset('assets/five.jpg')),
    );
  }
}
