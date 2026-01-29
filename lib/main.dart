import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
      FlutterSpeedUiApp(),
    );
}

class FlutterSpeedUiApp extends StatefulWidget {
  const FlutterSpeedUiApp({super.key});

  @override
  State<FlutterSpeedUiApp> createState() => _FlutterSpeedUiAppState();
}

class _FlutterSpeedUiAppState extends State<FlutterSpeedUiApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //ปิดป้าย ดีบัค
      home: HomeUi(),//กำหนดหน้าจอแรก
      //กำหนด ธีม
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(),
      ),
    );
  }
}
