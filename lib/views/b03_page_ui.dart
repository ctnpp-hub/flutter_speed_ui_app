import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/b02_page_ui.dart';
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
    body: SafeArea(
      child: SingleChildScrollView(
          child: Stack(
            children: [
              Align( //ไม่สามารถวางภาพซ้อนได้
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/images/Ellipse 1.png',
                width: 230,
                fit: BoxFit.fill,
              ),
            ),

            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/images/Ellipse 2.png',
                height: 265,
                width: 390,
                fit: BoxFit.fill,
              ),
            ),

              const SizedBox(height: 50),
            
             Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const SizedBox(height: 60),

              Text(
                'Create Account',
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F41BB),
                ),
              ),

              const SizedBox(height: 12),

              Text(
                'Create an account so you can explore all the\n existing jobs',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                  ),
              ),

              const SizedBox(height: 30),

              TextField(
                decoration: InputDecoration(
                  hintText: 'E-Mail',
                  filled: true,
                  fillColor: Color(0xFFF1F4FF),
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

              const SizedBox(height: 20),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Color(0xFFF1F4FF),
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

              const SizedBox(height: 20),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Comfirm Password',
                  filled: true,
                  fillColor: Color(0xFFF1F4FF),
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

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 60),
                  backgroundColor: Color(0xFF1F41BB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Text(
                  'Sign up',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const B02PageUi(),
                    ),
                   );
                  },
                  child: Text(
                    'already have an account',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.black
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 65),

              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Or continue with',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1F41BB),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialIcon(
                    icon: Icons.g_mobiledata,
                    color: Colors.black,
                    size: 50,
                  ),

                  const SizedBox(width: 15),

                  socialIcon(
                    icon: Icons.facebook,
                    color: Colors.black,
                  ),

                  const SizedBox(width: 15),
                  
                  socialIcon(
                    icon: Icons.apple,
                    color: Colors.black,
                    size: 32,
                  ),
                ],
              ),
            ],
          ),
        ),
            ],
      ),
        ),
    ),
    );
  }

  Widget socialIcon({
    required IconData icon,
    required Color color,
    double size = 30,
  }) {
    return socialBase(
      child: Icon(
        icon,
        size: size,
        color: color,
      ),
    );
  }

  Widget socialBase({required Widget child}) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: 70,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFFECECEC),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: child),
      ),
    );
  }
}


