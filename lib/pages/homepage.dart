import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:apps/widgets/drawer.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Elephant',
              color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            'This is home page',
            style: GoogleFonts.openSansCondensed(),
          ),
        ),
      ),
      drawer: drawerd(),
    );
  }
}
