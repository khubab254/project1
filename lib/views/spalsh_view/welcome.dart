import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Text('welcome to Your Account',style: GoogleFonts.aboreto(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white),)
      ],),
    );
  }
}
