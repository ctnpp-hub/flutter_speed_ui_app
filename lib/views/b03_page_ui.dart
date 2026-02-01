import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class B03PageUi extends StatefulWidget {
  const B03PageUi({super.key});

  @override
  State<B03PageUi> createState() => _SigninUiState();
}

class _SigninUiState extends State<B03PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'B03 Page',
          style: GoogleFonts.kanit(fontSize: 40),
        ),
      ),
    );
  }
}
