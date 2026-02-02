import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class A02PageUi extends StatefulWidget {
  const A02PageUi({super.key});

  @override
  State<A02PageUi> createState() => _SigninUiState();
}

class _SigninUiState extends State<A02PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [

              const SizedBox(height: 40),

              Text(
                'Welcome Back',
                style: GoogleFonts.outfit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Diam maecenas mi non sed ut odio. Non, justo,\n sed facilisi et. ',
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(color: Colors.grey),
              ),

              const SizedBox(height: 45),

              TextField(
                style: GoogleFonts.outfit(
                  fontSize: 15,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Username , E-Mail & Phone Number',
                  hintStyle: GoogleFonts.outfit(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade200,
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
                obscureText: true, //ซ่อน password
                style: GoogleFonts.outfit(
                  fontSize: 15,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: GoogleFonts.outfit(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade200,
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

              const SizedBox(height: 4),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forget Password?',
                    style: GoogleFonts.outfit(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 60),
                  backgroundColor: Colors.pinkAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Text(
                  'Sign in',
                  style: GoogleFonts.outfit(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 3,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.white,
                            Colors.pinkAccent,
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Or Sign up With',
                      style: GoogleFonts.outfit(
                        color: Colors.grey.shade900,
                        fontSize: 12,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      height: 3,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.pinkAccent,
                            Colors.white,
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialGoogle(),
                  
                  const SizedBox(width: 16),

                  socialIcon(
                    icon: Icons.facebook,
                    color: Colors.blue,
                  ),

                  const SizedBox(width: 16),
                  
                  socialIcon(
                    icon: Icons.apple,
                    color: Colors.black,
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
  }) {
    return socialBase(
      child: Icon(
        icon,
        size: 40,
        color: color,
      ),
    );
  }

  Widget socialBase({required Widget child}) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.pinkAccent,
            width: 1,
          ),
        ),
        child: Center(child: child),
      ),
    );
  }
}
