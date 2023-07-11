import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizScreen extends StatelessWidget {
  final String data;

  const QuizScreen(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    var app_size = MediaQuery.of(context).size;
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
        width: app_size.width,
        height: app_size.height,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'The Olympics are held every how many years',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            const Divider(),
            Container(
              child: Column(
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
            )
          ],
        ),
      ),
    ));
  }
}
