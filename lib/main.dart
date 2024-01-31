import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_assignment_03/login_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(left: 20, right: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                const Icon(Icons.arrow_back_outlined),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF575DFB),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                RichText(
                  text: const TextSpan(
                    text: "Create an ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                    children: [
                      TextSpan(
                        text: "Account",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF575DFB),
                        ),
                      ),
                      TextSpan(
                        text: " to access all the \nfeatures of ",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      TextSpan(
                        text: "Maxpense!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Email",
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.alternate_email,
                        color: Color(0xFF575DFB),
                      ),
                      hintText: "Ex: abc@example.com",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                const SizedBox(
                  height: 28,
                ),
                const Text(
                  "Your Name",
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person_outline_outlined,
                        color: Color(0xFF575DFB),
                      ),
                      hintText: "Ex: Kainat Batool",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                const SizedBox(
                  height: 28,
                ),
                const Text(
                  "Your Password",
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock_outline_rounded,
                        color: Color(0xFF575DFB),
                      ),
                      hintText: "Ex: **************",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF575DFB)),
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(343, 56)),
                      // Set the width and height
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.to(
                        LoginScreen(),
                      );
                    },
                    child: RichText(
                      text: const TextSpan(
                          text: "Already have an Account  ",
                          style: TextStyle(color: Colors.grey),
                          children: [
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                color: Color(0xff575DFB),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
