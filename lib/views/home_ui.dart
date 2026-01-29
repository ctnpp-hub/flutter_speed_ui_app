import 'package:flutter/material.dart';
import 'a01_page_ui.dart';
import 'a02_page_ui.dart';
import 'b01_page_ui.dart';
import 'b02_page_ui.dart';
import 'c01_page_ui.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4A005F),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/work.png',
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 30),
            
            button(
              text: 'Go to A Page',
              color: Colors.pinkAccent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => A01PageUi(),
                  ),
                );
              },
            ),
            
            button(
              text: 'Go to B Page',
              color: Colors.indigo,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => A02PageUi(),
                  ),
                );
              },
            ),

            button(
              text: 'Go to C Page',
              color: Colors.green,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => B01PageUi(),
                  ),
                );
              },
            ),

            button(
              text: 'Go to D Page',
              color: Colors.cyan,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => B02PageUi(),
                  ),
                );
              },
            ),
            
            button(
              text: 'Go to E Page',
              color: Colors.orange,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => C01PageUi(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget button({
    required String text,
    required Color color,
    required VoidCallback onTap,
    }
  )
  
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          onPressed: onTap,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
