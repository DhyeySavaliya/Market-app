import 'package:apps/utils/routes.dart';
import 'package:apps/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:apps/pages/homepage.dart';
import 'package:apps/pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(apk1());

class apk1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => homepage(),
        MyRoutes.loginRoute: (context) => loginpage(),
        MyRoutes.homeRoute: (context) => homepage(),
      },
    );
  }
}
