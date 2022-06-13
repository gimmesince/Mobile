import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas Mobile'),
        backgroundColor: Colors.green,
      ), 
      body: Center(
        child: Text('This First Page'),
      ), 
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas Mobile'),
        backgroundColor: Colors.green,
      ), 
      body: Center(
        child: Text('This Second Page'),
      ), 
    );
  }
}

