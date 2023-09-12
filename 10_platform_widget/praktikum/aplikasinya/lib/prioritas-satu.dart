import 'package:flutter/material.dart';

class PrioritasSatu extends StatelessWidget {
  const PrioritasSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialApp'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: ListView(
          children: const [
            Isinya(
              nameUser: 'Leanne Graham',
              nameProfile: 'L',
              number: '1-2334-234',
            ),
            Isinya(
                nameUser: 'Ervin Howell',
                nameProfile: 'E',
                number: '1-2334-234'),
            Isinya(
                nameUser: 'Asep Selebor',
                nameProfile: 'A',
                number: '3-4124-954'),
            Isinya(
                nameUser: 'Dayat Panci',
                nameProfile: 'D',
                number: '4-9842-903'),
            Isinya(
                nameUser: 'Agus Bengkel',
                nameProfile: 'A',
                number: '5-2523-134'),
            Isinya(
                nameUser: 'Mikel Sasak',
                nameProfile: 'M',
                number: '9-4145-254'),
            Isinya(
                nameUser: 'Andi Galon', nameProfile: 'A', number: '1-4334-234'),
            Isinya(
                nameUser: 'Jonatan Saputra',
                nameProfile: 'J',
                number: '9-5054-834'),
            Isinya(
                nameUser: 'Suwandi Mandi',
                nameProfile: 'S',
                number: '4-5223-523'),
            Isinya(
                nameUser: 'Aceng Fikri',
                nameProfile: 'A',
                number: '1-5234-341'),
            Isinya(
                nameUser: 'Dimas Kanjeng',
                nameProfile: 'D',
                number: '5-1241-523'),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: Text('Item 1'),
            ),
            ListTile(
              title: Text('Item 2'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: ('Search'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: ('Profile'),
        ),
      ]),
    );
  }
}

class Isinya extends StatelessWidget {
  final String nameUser;
  final String nameProfile;
  final String number;

  const Isinya(
      {super.key,
      required this.nameUser,
      required this.nameProfile,
      required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(180),
              child: Container(
                width: 55,
                height: 55,
                color: Colors.red,
                child: Center(
                  child: Text(
                    nameProfile,
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameUser,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  number,
                  style: TextStyle(fontSize: 15),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
