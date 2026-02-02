import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/c03_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class C02PageUi extends StatefulWidget {
  const C02PageUi({super.key});

  @override
  State<C02PageUi> createState() => _C02PageUiState();
}

class _C02PageUiState extends State<C02PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 40),

              Center(
                child: Container(
                  width: 121,
                  height: 121,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    'assets/images/H_frame.png',
                    width: 120,
                    height: 120,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Center(
                child: Text(
                  'Sign in your account',
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              Text(
                'Email',
                style: GoogleFonts.poppins(
                  fontSize: 16
                  ),
              ),

              const SizedBox(height: 5),

              TextField(
                decoration: InputDecoration(
                  hintText: 'ex: jon.smith@email.com',
                  hintStyle: const TextStyle(
                    color: Color(0xFF888888),
                    fontSize: 15,
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF1F4FF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 22,
                    horizontal: 20,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Text(
                'Password',
                style: GoogleFonts.poppins(fontSize: 16),
              ),

              const SizedBox(height: 5),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '*********',
                  hintStyle: const TextStyle(
                    color: Color(0xFF888888),
                    fontSize: 15,
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF1F4FF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 22,
                    horizontal: 20,
                  ),
                ),
              ),

              const SizedBox(height: 50),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 60),
                  backgroundColor: const Color(0xFF00B140),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Text(
                  'SIGN IN',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              Center(
                child: Text(
                  'or sign in with',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xFF888888),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialGoogle(),

                  const SizedBox(width: 15),

                  socialIcon(
                    icon: FontAwesomeIcons.facebookF,
                    color: Colors.blue,
                  ),

                  const SizedBox(width: 15),

                  socialIcon(
                    icon: FontAwesomeIcons.twitter,
                    color: Color(0xFF1DA1F2),
                    size: 32
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF888888),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const C03PageUi(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
                    child: Text(
                      ' SIGN UP',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF00B140),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialGoogle() {
    return socialBase(
      child: Image.asset(
        'assets/images/googlelogo.png',
        width: 30,
      ),
    );
  }

  Widget socialIcon({
    required IconData icon,
    required Color color,
    double size = 28,
  }) {
    return socialBase(
      child: Icon(icon, size: size, color: color),
    );
  }

  Widget socialBase({required Widget child}) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 80,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFFF4F4F4),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: child),
      ),
    );
  }
}
