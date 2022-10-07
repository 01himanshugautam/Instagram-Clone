import 'package:flutter/material.dart';
import 'package:instagram_clone/auth_screen.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram Clone",
      theme: ThemeData(
        primaryColor: Colors.purple
      ),
      home:const AuthScreen(),
    );
  }
}