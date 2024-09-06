import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: NetworkImage(
                    "https://img.freepik.com/premium-photo/colorful-image-blue-pink-wave-that-says-blue_1034303-453873.jpg"))),
      ),
    );
  }
}
