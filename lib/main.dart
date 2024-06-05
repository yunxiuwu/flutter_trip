import 'package:flutter/material.dart';
import 'package:flutter_trip/navigator/tab_navigator.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: '携程',
      theme: ThemeData(
        primaryColor: Colors.greenAccent,
        highlightColor: const Color.fromRGBO(0, 0, 0, 0),
        splashColor: const Color.fromRGBO(0, 0, 0, 0)
      ),
      home: const Scaffold(
        body: TabNavigator()
      ),
    );
  }
}
