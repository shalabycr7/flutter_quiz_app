import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/screens/score_screen.dart';

class QuizScreen extends StatelessWidget {
  final String data;

  const QuizScreen(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    String? gender;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(data),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/images/logo.png',
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.2,
            ),
          ),
        ],
      ),
      body: Container(
        width: appSize.width,
        height: appSize.height,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'The Olympics are held every how many years',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(),
                Column(
                  children: [
                    RadioListTile(
                      title: const Text(
                        "4 years",
                      ),
                      value: "4 years",
                      groupValue: gender,
                      onChanged: (value) {},
                    ),
                    RadioListTile(
                      title: const Text("3 years"),
                      value: "3 years",
                      groupValue: gender,
                      onChanged: (value) {},
                    ),
                    RadioListTile(
                      title: const Text("2 years"),
                      value: "2 years",
                      groupValue: gender,
                      onChanged: (value) {},
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: appSize.width * 1 / 3,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ScorePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Submit',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
