// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:scr/screens/home/constant.dart';

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
      backgroundColor: Colors.indigo[900],
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            //Welcome Text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Title
                Column(
                  children: [
                    //Space
                    Container(
                      height: size.height * 0.03,
                    ),
                    //Title
                    Text(
                      "Mr. Cover",
                      style: TextStyle(
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    //Subtitle
                    Text(
                      "Keep your secrets safe",
                      style: TextStyle(
                        fontSize: size.width * 0.02,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //Space
            Container(
              height: size.height * 0.18,
            ),
            //Message to encrypt
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Message to encrypt
                Container(
                  height: size.height * 0.3,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    textAlign: TextAlign.justify,
                    controller: encryptText,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        fontSize: size.width * 0.02,
                        fontFamily: "Arial",
                        color: Colors.black26,
                      ),
                      border: InputBorder.none,
                      labelText: "Message to encrypt:",
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
                //Encrypt button
                Container(
                  height: size.height * 0.1,
                  width: size.width * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      setState(
                        () {
                          decryptText = encryptText.text;
                        },
                      );
                    },
                  ),
                ),
                //Decrypt message
                Container(
                  height: size.height * 0.3,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.justify,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        fontSize: size.width * 0.02,
                        fontFamily: "Arial",
                        color: Colors.black26,
                      ),
                      border: InputBorder.none,
                      labelText: decryptText,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
              ],
            ),
            //Space
            Container(
              height: size.height * 0.05,
            ),
            // Copy public and private keys to clipboard
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Copy public key
                Container(
                  height: size.height * 0.05,
                  width: size.width * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    tooltip: "Public key",
                    icon: Icon(Icons.copy),
                    onPressed: () {
                      setState(
                        () {
                          decryptText = encryptText.text;
                        },
                      );
                    },
                  ),
                ),
                //Copy private key
                Container(
                  height: size.height * 0.05,
                  width: size.width * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    tooltip: "Private key",
                    icon: Icon(Icons.copy),
                    onPressed: () {
                      setState(
                        () {
                          decryptText = encryptText.text;
                        },
                      );
                    },
                  ),
                ),
                //Space
                SizedBox(
                  width: size.width * 0.07,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
