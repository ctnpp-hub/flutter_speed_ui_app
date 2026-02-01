import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class E01PageUi extends StatelessWidget {
  const E01PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('E01 Page', style: GoogleFonts.kanit(fontSize: 40),),
      ),
    );
  }
}