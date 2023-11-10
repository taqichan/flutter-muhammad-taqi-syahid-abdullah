import 'package:flutter/material.dart';
import 'package:mvvm/screen/contact/contact_screen.dart';
import 'package:mvvm/screen/contact/contact_view_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ContactViewModel(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ContactScreen(),
        ),
      ),
    );
