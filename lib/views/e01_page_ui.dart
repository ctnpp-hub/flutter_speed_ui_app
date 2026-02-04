import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/e02_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class E01PageUi extends StatelessWidget {
  const E01PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Image.asset(
              'assets/images/juice.png',
              height: 460,
              width: 320,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            Text(
              'BERRY JUICE',
              style: GoogleFonts.abrilFatface(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                shadows: const [
                  Shadow(
                    color: Color(0xFFFAA91E),
                    offset: Offset(0, 3),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'A "Moments of healthy sip\nThe best vitamin for your health',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF000000),
              ),
            ),
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const E02PageUi(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFFFFC52A),
                        Color(0xFFF69515),
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Explore Now',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
