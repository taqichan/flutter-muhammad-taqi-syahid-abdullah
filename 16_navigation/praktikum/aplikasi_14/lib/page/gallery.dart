// INI SOAL PRIORITAS 1 (GALERY)

import 'package:aplikasi_14/page/contact.dart';
import 'package:aplikasi_14/page/detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  final List<Map<String, dynamic>> _listItem = [
    {"image": 'assets/two.jpg'},
    {"image": 'assets/three.jpg'},
    {"image": 'assets/four.jpg'},
    {"image": 'assets/five.jpg'},
    {"image": 'assets/one.jpg'},
    {"image": 'assets/two.jpg'},
    {"image": 'assets/three.jpg'},
    {"image": 'assets/four.jpg'},
    {"image": 'assets/five.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Grid View',
          style: GoogleFonts.poppins(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            ListTile(
              leading: const Icon(Icons.contact_phone),
              title: const Text("Contact"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FormContact();
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_size_select_actual_rounded),
              title: const Text("Gallery"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/onee.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(0.4),
                          Colors.black.withOpacity(0.2),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Furniture Sale',
                          style: GoogleFonts.poppins(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Center(
                              child: Text(
                            'Shop Now',
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w600),
                          )),
                        )
                      ],
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _displayBottomSheet(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(_listItem[0]['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: IconFavBorder(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _displayBottomSheet(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(_listItem[1]['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: IconFavBorder(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _displayBottomSheet(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(_listItem[2]['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const IconFav(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _displayBottomSheet(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(_listItem[3]['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const IconFavBorder(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _displayBottomSheet(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(_listItem[4]['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const IconFav(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _displayBottomSheet(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(_listItem[5]['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const IconFavBorder(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _displayBottomSheet(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(_listItem[6]['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const IconFavBorder(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _displayBottomSheet(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(_listItem[7]['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const IconFavBorder(),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconFavBorder extends StatelessWidget {
  const IconFavBorder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(50, -50),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 65, vertical: 65),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: const Icon(
          Icons.favorite_border,
          size: 15,
        ),
      ),
    );
  }
}

class IconFav extends StatelessWidget {
  const IconFav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(50, -50),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 65, vertical: 65),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: const Icon(
          Icons.favorite,
          size: 15,
        ),
      ),
    );
  }
}

Future _displayBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      backgroundColor: Colors.white,
      barrierColor: Colors.black87.withOpacity(0.4),
      builder: (context) {
        return Container(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Apakah ingin melihat gambar lebih detail?',
                style: GoogleFonts.poppins(
                    color: Colors.black, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Detail(),
                        ),
                      );
                    },
                    child: Text('Ya'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Tidak'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      });
}
