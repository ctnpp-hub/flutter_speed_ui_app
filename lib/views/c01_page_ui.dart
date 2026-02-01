import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class C01PageUi extends StatelessWidget {
  const C01PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('C01PageUi',style: GoogleFonts.kanit(fontSize: 30),),
      ),
    );
  }
}