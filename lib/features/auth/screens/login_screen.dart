import 'package:flutter/material.dart';
import 'package:medcare/features/auth/screens/signup_screen.dart';

import 'package:medcare/features/auth/widgets/input_wigdet.dart';
import 'package:medcare/features/auth/widgets/password_input.dart';
import 'package:medcare/features/home/screens/home_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            const InputWigdet(
                labelText: "Email",
                obscureText: false,
                keyboardType: TextInputType.emailAddress),
            const SizedBox(height: 16.0),
            const PasswordInput(),
            const SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                
              },
              child: const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  textAlign: TextAlign.end,
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 48.0),
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(
                      behavior: SnackBarBehavior.floating,
                      margin: const EdgeInsets.all(12),
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      content: Container(
                        alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                      decoration: BoxDecoration(color: Colors.green.shade300,borderRadius: BorderRadius.circular(12)),
                      child: const Text("Logged in successful"))));
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SignupScreen(),
                    ),
                  );
                },
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Don\'t have an account?',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16.0,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
