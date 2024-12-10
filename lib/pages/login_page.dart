import 'dart:math';

import 'package:flutter/material.dart';
import '../components/my_button.dart';
import '../components/my_textfield.dart';

import 'home_page.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login method
  void login() {
    /*
    fill out authentication here.
    */
    // navigate to home page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.surface,
      backgroundColor: Colors.white,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // logo
          // Icon(
          //   Icons.lock_open_rounded,
          //   size: 72,
          //   color: Theme.of(context).colorScheme.inversePrimary,
          // ),
          Lottie.asset('lib/assets/Animation1.json'),
          const SizedBox(
            height: 25,
          ),
          // message, app slogan
          Text(
            "Food Delivery App",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          // email textfield
          MyTextField(
            controller: emailController,
            hintText: "Email",
            obscureText: false,
          ),
          // password textfield
          const SizedBox(
            height: 10,
          ),
          MyTextField(
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
          ),
          // sign in button
          const SizedBox(
            height: 10,
          ),
          MyButton(
            text: "Sign In",
            onTop: login,
          ),

          const SizedBox(
            height: 25,
          ),

          // not a member? register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: const Text(
                  "Register now",
                  style: TextStyle(
                    // color: Theme.of(context).colorScheme.inversePrimary,
                    color: Color.fromARGB(255, 0, 0, 255),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
