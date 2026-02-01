import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'b02_page_ui.dart';
import 'b03_page_ui.dart';

class B01PageUi extends StatelessWidget {
  const B01PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack( //Stack สามารถวางภาพซ้อนได้
          children: [
            Align( //ไม่สามารถวางภาพซ้อนได้
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/images/Ellipse 1.png',
                width: 260,
                fit: BoxFit.fill,
              ),
            ),

            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/images/Ellipse 2.png',
                width: 350,
                fit: BoxFit.fill,
              ),
            ),

            Positioned( //วางภาพซ้อนได้ จัดมุมได้อิสระ
              bottom: 0,
              left: 0,
              child: Image.asset(
                'assets/images/Rectangle 3.png',
                width: 200,
                fit: BoxFit.fill,
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                'assets/images/Rectangle 4.png',
                height: 295,
                width: 100,
                fit: BoxFit.fill,
              ),
            ),

            Column(
              children: [
                const SizedBox(height: 50),
                Expanded(
                  child: Image.asset(
                    'assets/images/coffee.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  'Discover Your\nDream Job here',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1F41BB),
                  ),
                ),

                const SizedBox(height: 15),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Explore all the existing job roles based on your\ninterest and study major',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.outfit(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),

                const SizedBox(height: 150),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const B02PageUi()
                                ),
                              );
                            }
                            ,
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(MediaQuery.of(context).size.width, 60),
                              backgroundColor: const Color(0xFF1F41BB),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Login',
                                style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 20),

                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const B03PageUi()
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(MediaQuery.of(context).size.width, 60),
                              backgroundColor: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            child: Text(
                              'Register',
                              style: GoogleFonts.outfit(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 75),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
