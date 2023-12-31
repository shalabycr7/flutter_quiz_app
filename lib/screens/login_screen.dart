import 'package:flutter/material.dart';
import 'package:quizizz/global/gradient_decoration.dart';
import 'package:quizizz/global/round_button_decoration.dart';
import 'package:quizizz/screens/categories_screen.dart';

TextEditingController usernameController = TextEditingController();

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: DecoratedBox(
        decoration: blueGradient,
        child: SafeArea(
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: size.height * 1 / 20,
                    left: 20,
                    right: 20,
                    top: size.height * 1 / 20,
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        height: size.height * 0.1,
                        width: size.width * 0.3,
                      ),
                      const Icon(
                        Icons.fact_check_rounded,
                        size: 80,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                height: size.height * 2 / 3,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: usernameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Username can not be empty';
                          } else if (value.length < 9) {
                            return "Username must be more than 9 chracters";
                          } else if (!value[0].contains(RegExp(r'[A-Z]'))) {
                            return "First character in username must be uppercase ";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person),
                          hintText: "Username",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          const Spacer(),
                          const Text("New to quizizz?"),
                          TextButton(
                            onPressed: () {},
                            child: const Text("Register"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: size.width / 2 - 60,
                        height: 45,
                        child: ElevatedButton(
                          style: roundButtonDecor(Colors.blue),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CategoriesPage(),
                                ),
                              );
                            }
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 35),
                      const Icon(
                        Icons.fingerprint,
                        size: 70,
                        color: Colors.blue,
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Use Touch ID",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                              ),
                              const Text("Remember me"),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text("Forget Password?"),
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
      ),
    );
  }
}
