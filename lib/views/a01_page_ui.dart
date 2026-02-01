import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'a02_page_ui.dart';

class A01PageUi extends StatelessWidget {
  const A01PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              child: Container(
                width: 463,
                height: 463,
                color: Colors.pinkAccent,
                child: Image.asset(
                  'assets/images/rocket.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          const SizedBox(height: 30),

          Text(
            'Discover Your\nOwn Dream House',
            textAlign: TextAlign.center,
            style: GoogleFonts.outfit(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Diam maecenas mi non sed ut odio. Non, justo, sed facilisi\n et. Eget viverra urna, vestibulum egestas faucibus\n egestas. Sagittis nam velit volutpat eu nunc.',
              textAlign: TextAlign.center,
              style: GoogleFonts.outfit(
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
          ),

          const SizedBox(height: 120),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 224, 224, 224),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          bottomLeft: Radius.circular(14),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Sign in',
                          style: GoogleFonts.outfit(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const A02PageUi(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 228, 221, 221),
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(vertical: 24,),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                          ),
                        ),
                      ),
                      child: Text(
                        'Register',
                        style: GoogleFonts.outfit(
                          fontSize: 22,
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
        ],
      ),
    );
  }
}