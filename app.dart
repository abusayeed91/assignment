
import 'package:flutter/material.dart';
import 'greeting_app.dart';

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greeting App',
      home: const GreetingApp(),

    );
  }

}