import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ptsganjil202112rpl1zafira34/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const MaterialColor primarySwatch = const MaterialColor(
      0xFFF8BBD0,
      const <int, Color>{
        50: Color(0xFF1DE9B6),
        100: Color(0xFF1DE9B6),
        200: Color(0xFF1DE9B6),
        300: Color(0xFF1DE9B6),
        400: Color(0xFF1DE9B6),
        500: Color(0xFF1DE9B6),
        600: Color(0xFF1DE9B6),
        700: Color(0xFF1DE9B6),
        800: Color(0xFF1DE9B6),
        900: Color(0xFF1DE9B6),
      },
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
              textTheme: TextTheme(
                  headline6: GoogleFonts.poppins(
                      color: Colors.deepPurple,
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  )
              )
          ),
          primaryColor: Color(0xFF1DE9B6),
          primarySwatch: primarySwatch,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.deepPurple,
              primary: Color(0xFF1DE9B6),
            ),
          )),
      home: SplashScreen(),
    );
  }
}
