import 'package:flutter/material.dart';
import 'package:nubank/pages/home/Home_page.dart';

void main() => runApp(const MyApp());

//Main
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nubank',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomePage(),
    );
  }
}
