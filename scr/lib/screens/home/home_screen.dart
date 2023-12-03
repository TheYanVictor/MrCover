import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //This provides us total height and width of our screen
    return Scaffold(
      body: Container(
        color: Colors.red,
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Center(
              child: Text(
                "Mr Cover",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
