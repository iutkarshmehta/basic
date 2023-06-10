import 'package:bloc_basic_app/presentation/screens/home.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal
      ),
      home: Home(),
    );
  }
}
