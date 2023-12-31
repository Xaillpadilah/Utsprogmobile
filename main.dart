import 'package:flutter/material.dart';
import 'package:uts_mwipaldinurpadilah/pages/home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home_page.dart', 
      routes: {
        '/home_page.dart': (BuildContext context) => HomePage(),
      },
    );
  }
}



