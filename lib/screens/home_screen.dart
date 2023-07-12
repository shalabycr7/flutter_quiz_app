import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizizz/global/gradient_decoration.dart';
import 'package:quizizz/global/round_button_decoration.dart';
import 'package:quizizz/screens/login_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          decoration: blueGradient,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'ITI Quiz App',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'We enjoy spreading knowledge',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ),
              const Spacer(),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 75, vertical: 30),
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyLoginPage()),
                    );
                  },
                  style: roundButtonDecor(Colors.white),
                  child: Text(
                    'Start',
                    style: GoogleFonts.roboto(
                      textStyle:
                          const TextStyle(fontSize: 22, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
