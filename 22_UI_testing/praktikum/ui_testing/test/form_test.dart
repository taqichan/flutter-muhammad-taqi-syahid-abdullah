import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_testing/home-page.dart';

void main() {
  testWidgets('Judulnya harus Sesuai', (widgetTester) async {
    await widgetTester.pumpWidget(MaterialApp(
      home: HomePage(),
    ));
    expect(find.text('Create New Contact'), findsOneWidget);
  });
  testWidgets('Bodynya harus Sesuai', (widgetTester) async {
    await widgetTester.pumpWidget(MaterialApp(
      home: HomePage(),
    ));
    expect(
        find.text(
            'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.'),
        findsOneWidget);
  });
  testWidgets('Harus ada button', (widgetTester) async {
    await widgetTester.pumpWidget(MaterialApp(
      home: HomePage(),
    ));
    expect(find.text('Submitted Data:'), findsOneWidget);
  });
}
