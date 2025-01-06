import 'package:chatapp/components/buttons.dart';
import 'package:chatapp/components/textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginPage({super.key});

  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            //message
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Welcome to the platform!",
              style: TextStyle(
                color: Color.fromARGB(160, 8, 0, 0),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 25),

            MyTextField(
              obscureText: false,
              controller: emailController,
              hintText: "Email",
            ),
            const SizedBox(height: 15),
            MyTextField(
              obscureText: true,
              controller: passwordController,
              hintText: "Password",
            ),
            const SizedBox(height: 25),

            Buttons(
              text: "Login",
              onTap: login,
            ),
            const SizedBox(height: 25),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?"),
                Text(
                  "Register now",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
