import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class D01PageUi extends StatelessWidget {
  const D01PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('D01PageUi',style: GoogleFonts.kanit(fontSize: 30),),
      ),
    );
  }
}