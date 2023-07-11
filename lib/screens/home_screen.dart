import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/screens/login_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 78, 84, 200),
              Color.fromARGB(255, 67, 72, 169),
            ],
          )),
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'ITI Quiz App',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
              Text(
                'We enjoy spreading knowledge',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(fontSize: 20, color: Colors.white),
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
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontSize: 22,
                      ),
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
