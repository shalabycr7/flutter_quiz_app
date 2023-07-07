import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.deepPurple,
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Image.asset(
              'assets/images/logo.png',
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.3,
            ),
            const SizedBox(height: 10),
            Image.asset(
              'assets/images/info.png',
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 35),
                    Text(
                      'Login',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            letterSpacing: .5),
                      ),
                    ),
                    const SizedBox(height: 25),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        hintStyle: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        prefixIcon: const Icon(Icons.person),
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        prefixIcon: const Icon(Icons.lock),
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'New To Quizizz?',
                          style: TextStyle(color: Colors.grey),
                        ),
                        GestureDetector(
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text('Register?'),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 75, vertical: 15),
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
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
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 70, vertical: 15),
                      child: Image.asset(
                        'assets/images/print.png',
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                    ),
                    const Text(
                      'Use Touch ID',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        const Text(
                          'Remember me',
                          style: TextStyle(color: Colors.grey),
                        ),
                        const Spacer(),
                        GestureDetector(
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
