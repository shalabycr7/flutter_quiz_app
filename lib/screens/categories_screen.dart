import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizizz/screens/quiz_screen.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("assets/images/sports.jpg"),
                  opacity: 0.5,
                  fit: BoxFit.cover,
                ),
              ),
              margin: const EdgeInsets.all(10),
              child: Center(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QuizScreen('Sports')),
                      );
                    },
                    child: Text(
                      'Sports',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("assets/images/history_panel.jpg"),
                  opacity: 0.5,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              margin: const EdgeInsets.all(10),
              child: Center(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QuizScreen('History')),
                      );
                    },
                    child: Text(
                      'History',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("assets/images/general_panel.jpg"),
                  opacity: 0.5,
                  fit: BoxFit.cover,
                ),
              ),
              margin: const EdgeInsets.all(10),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const QuizScreen('General Knowledge')),
                    );
                  },
                  child: Text(
                    'General Knowledge',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
