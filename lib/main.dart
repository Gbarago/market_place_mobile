import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(textTheme).copyWith(
          bodyText2: GoogleFonts.roboto(textStyle: textTheme.bodyText2),
        ),
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}












 

  // runApp(
  //   MaterialApp(
  //     theme: ThemeData(
  //       // Add other theme properties as needed
  //     ),
