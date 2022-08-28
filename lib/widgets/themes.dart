import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.orange,
    fontFamily: GoogleFonts.poppins().fontFamily,
    cardColor: Colors.white,
    canvasColor: creamColor,
    // ignore: deprecated_member_use
    buttonColor: darkBluishColor ,
    // ignore: deprecated_member_use
    accentColor: darkBluishColor,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
      titleTextStyle: Theme.of(context).textTheme.headline6,
    ),
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.indigo,
    fontFamily: GoogleFonts.poppins().fontFamily,
    cardColor: Colors.black,
    canvasColor: darkCreamColor,
    // ignore: deprecated_member_use
    buttonColor: lightBluishColor ,
    // ignore: deprecated_member_use
    accentColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.black,
      elevation: 0,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
      titleTextStyle: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
    ),
  );

  // colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = const Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}