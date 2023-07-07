import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
        ),
        child: Column(
          children: [
            SizedBox(height: 50),
            Image.asset(
              'assets/images/logo.png',
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.3,
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/images/info.png',
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        prefixIcon: const Icon(Icons.person),
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
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
                        Text(
                          'New To Quiz?',
                        ),
                        GestureDetector(
                          onDoubleTap: () {
                            // Handle double tap gesture
                          },
                          onLongPress: () {
                            // Handle long press gesture
                          },
                          child: TextButton(
                            onPressed: () {},
                            child: Text('Register?'),
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 22),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                      child: Image.asset(
                        'assets/images/print.png',
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.height * 0.07,
                      ),
                    ),
                    Text(
                      'Use Touch ID',
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        const Text('Remember me'),
                        Spacer(),
                        Text(
                          'Forgot Password?',
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
