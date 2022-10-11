import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_clone/code_verifiaction_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController _phone = TextEditingController();
  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SizedBox(
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/user.png',
                height: 150,
                width: 150,
              ),
              const SizedBox(height: 20),
              const SizedBox(
                width: 300,
                child: TabBar(
                  tabs: [Tab(text: "Phone"), Tab(text: "Email")],
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,
                ),
              ),
              SizedBox(
                height: 90,
                child: TabBarView(children: [
                  Container(
                      height: 20,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      child: TextField(
                        controller: _phone,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: "Phone",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      )),
                  Container(
                      height: 20,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      child: TextField(
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      )),
                ]),
              ),
              const SizedBox(height: 20),
              const Text(
                "you many receive sms notification from use for security and login purpose",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  if (_phone.text.isNotEmpty || _phone.text.isNotEmpty) {
                    print(
                      "Phone Number ${_phone.text}",
                    );
                    print("Email Address ${_email.text}");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CodeVerificationScreen(),
                      ),
                    );
                  }
                },
                child: Container(
                  height: 45,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8)),
                  alignment: Alignment.center,
                  child: const Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
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
