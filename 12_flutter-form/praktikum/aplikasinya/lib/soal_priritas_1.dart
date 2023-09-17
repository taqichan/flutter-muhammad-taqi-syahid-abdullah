import 'package:flutter/material.dart';

class SoalPrioritas2 extends StatefulWidget {
  @override
  State<SoalPrioritas2> createState() => _SoalPrioritas2State();
}

class _SoalPrioritas2State extends State<SoalPrioritas2> {
  final _formKey = GlobalKey<FormState>();
  List<String> data = [];
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nomorController = TextEditingController();
  int selectedIndex = -1;
  final RegExp _namaDuaKata = RegExp(r'^\w+\s+\w+');
  final RegExp _namaKapital = RegExp(r'^[A-Z][a-z]*( [A-Z][a-z]*)*$');
  final RegExp _namaTidakKarakter = RegExp(r'^[A-Za-z\s]+$');
  final RegExp _noAngka = RegExp(r'^[0-9]+$');
  final RegExp _noPanjang = RegExp(r'^[0-9]{8,15}$');
  final RegExp _noAwal = RegExp(r'^0[0-9]*$');

  void _handleSubmit() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        if (selectedIndex == -1) {
          // Add new data if no item is selected for editing
          data.add(
              "Name: ${_nameController.text}, Nomor: ${_nomorController.text}");
        } else {
          // Update data if an item is selected for editing
          data[selectedIndex] =
              "Name: ${_nameController.text}, Nomor: ${_nomorController.text}";
          selectedIndex = -1;
        }
        _nameController.clear();
        _nomorController.clear();
      });
    }
  }

  void _handleEdit(int index) {
    setState(() {
      selectedIndex = index;
      String item = data[index];
      List<String> parts = item.split(", ");
      _nameController.text = parts[0].substring(6);
      _nomorController.text = parts[1].substring(7);
    });
  }

  void _handleDelete(int index) {
    setState(() {
      data.removeAt(index);
      if (selectedIndex == index) {
        selectedIndex = -1;
        _nameController.clear();
        _nomorController.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              const Icon(
                Icons.app_shortcut_outlined,
                size: 35,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Create New Contact',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ',
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                color: Colors.black45,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  if (!_namaDuaKata.hasMatch(value)) {
                    return 'Nama minimal 2 kata';
                  }
                  if (!_namaKapital.hasMatch(value)) {
                    return 'Setiap kata harus diawali huruf kapital';
                  }
                  if (!_namaTidakKarakter.hasMatch(value)) {
                    return 'Nama tidak boleh menggunakan karakter';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: 'Insert Your Name',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _nomorController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  if (!_noAngka.hasMatch(value)) {
                    return 'Nomor harus angka';
                  }
                  if (!_noPanjang.hasMatch(value)) {
                    return 'Nomor minimal 8 dan maksimal 15 karakter';
                  }
                  if (!_noAwal.hasMatch(value)) {
                    return 'Nomor harus diawali 0';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nomor',
                    hintText: 'Insert Your Number'),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: _handleSubmit,
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70),
                      ),
                    ),
                    child: Text(selectedIndex == -1 ? 'Submit' : 'Update'),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'Submitted Data:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Colors.black38, width: 1)),
                      title: Text(data[index]),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () => _handleEdit(index),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () => _handleDelete(index),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
