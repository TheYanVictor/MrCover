// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class home_view extends StatefulWidget {
  const home_view({super.key});

  @override
  State<home_view> createState() => _home_viewState();
}

class _home_viewState extends State<home_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home View'),
      ),
      body: Center(
        child: Center(
          child: Text(
            'Mr. Cover',
            style: TextStyle(fontSize: 35, color: Colors.amber),
          ),
        ),
      ),
    );
  }
}
