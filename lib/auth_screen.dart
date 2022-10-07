import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // DropdownButton(items: [
            //   const DropdownMenuItem(child: Text("Languages")),
            // ], onChanged: (value) {}),
            Image.asset(
              'assets/images/instagram-logo.png',
              height: 50,
              width: 200,
            ),
            const SizedBox(height: 45),
            Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(8)),
              alignment: Alignment.center,
              child: const Text(
                "Create an account",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Login",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
