import 'package:flutter/material.dart';
import 'package:medcare/features/auth/widgets/input_wigdet.dart';
import 'package:medcare/features/auth/widgets/password_input.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              'Sign Up',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            const InputWigdet(
              labelText: "Full Name",
              obscureText: false,
              keyboardType: TextInputType.name,
            ),
            const SizedBox(height: 16.0),
            const InputWigdet(
              labelText: "Email",
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16.0),
            const PasswordInput(),
            const SizedBox(height: 24.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 48.0),
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onPressed: () {
                // Handle login logic here
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  textAlign: TextAlign.end,
                  'Already have an account?',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
