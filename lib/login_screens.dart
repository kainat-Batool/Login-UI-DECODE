import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_assignment_03/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Login",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF575DFB),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Login now to track all your expenses \n and income at a place!",
                style: TextStyle(fontSize: 16),
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
                height: 10,
              ),
              const Text(
                'Forget Password',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              const SizedBox(
                height: 30,
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
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  width: 343,
                  height: 56,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.g_mobiledata),
                      SizedBox(height: 50,),
                      Text("Continue with Google")
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Get.to(
                      const MyApp(),
                    );
                  },
                  child: RichText(
                    text: const TextSpan(
                        text: "Don't have an Account?  ",
                        style: TextStyle(color: Colors.grey),
                        children: [
                          TextSpan(
                            text: 'Register',
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
    );
  }
}
