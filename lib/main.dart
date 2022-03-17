import 'package:flutter/material.dart';
import 'package:quiz_tpm/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MainScreen()
    );
  }

  Widget build_home(){
    return Scaffold(
      appBar: AppBar(
        title: Text("List Hotel"),
      ),
    );
  }
}

