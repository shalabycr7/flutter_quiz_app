import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizizz/screens/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
  final String imagePath;
  final String title;

  const CategoryContainer({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => QuizScreen(data: title)),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage(imagePath),
              opacity: 0.5,
              fit: BoxFit.cover,
            ),
          ),
          margin: const EdgeInsets.all(10),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
