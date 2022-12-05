import 'package:e_villlage/Ui/GetStarted/Register_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  MaterialColor themecolor = MaterialColor(
    Color.fromARGB(252, 181, 226, 161).value,
    <int, Color>{
      50: Color.fromRGBO(181, 226, 161, 0.1),
      100: Color.fromRGBO(181, 226, 161, 0.2),
      200: Color.fromRGBO(181, 226, 161, 0.3),
      300: Color.fromRGBO(181, 226, 161, 0.4),
      400: Color.fromRGBO(181, 226, 161, 0.5),
      500: Color.fromRGBO(181, 226, 161, 0.6),
      600: Color.fromRGBO(181, 226, 161, 0.7),
      700: Color.fromRGBO(181, 226, 161, 0.8),
      800: Color.fromRGBO(181, 226, 161, 0.9),
      900: Color.fromRGBO(181, 226, 161, 1),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: themecolor,
      ),
      home: RegisterScreen(),
    );
  }
}
