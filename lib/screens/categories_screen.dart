import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/screens/quiz_screen.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var app_size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      body: Container(
          width: app_size.width,
          height: app_size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              Container(
                height: app_size.height * 1 / 3,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: Center(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizScreen('Sports Test')),
                    );
                  },
                  child: Text(
                    'Sports Test',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          letterSpacing: .5),
                    ),
                  ),
                )),
              ),
              Container(
                height: app_size.height * 1 / 3,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizScreen('History Test')),
                    );
                  },
                  child: Text(
                    'History Test',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          letterSpacing: .5),
                    ),
                  ),
                )),
              ),
              Container(
                height: app_size.height * 1 / 3,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                ),
                child: Center(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              QuizScreen('General Knowledge Test')),
                    );
                  },
                  child: Text(
                    'General Knowledge Test',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          letterSpacing: .5),
                    ),
                  ),
                )),
              ),
            ],
          )),
    ));
  }
}
