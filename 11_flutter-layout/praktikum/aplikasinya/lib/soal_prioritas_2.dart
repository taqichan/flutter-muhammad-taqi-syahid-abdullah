import 'package:flutter/material.dart';

class SoalPrioritas2 extends StatelessWidget {
  const SoalPrioritas2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Flutter App"),
        centerTitle: true,
        backgroundColor: const Color(0xff6200EE),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            mainContent(nameCourse: 'Learn Flutter'),
            mainContent(nameCourse: 'Learn ReactJS'),
            mainContent(nameCourse: 'Learn VueJS'),
            mainContent(nameCourse: 'Learn Talwind CSS'),
            mainContent(nameCourse: 'Learn Figma'),
            mainContent(nameCourse: 'Learn Digital Marketing'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff03DAC5),
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        backgroundColor: const Color(0xff6200EE),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class mainContent extends StatelessWidget {
  final String nameCourse;
  const mainContent({
    super.key,
    required this.nameCourse,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 13,
        ),
        Text(
          nameCourse,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 13,
        ),
        Divider(
          color: Colors.black45,
        )
      ],
    );
  }
}
