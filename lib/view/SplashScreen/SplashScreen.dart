import 'package:flutter/material.dart';
import 'package:pinterest_clone/view/selectAccoutScreen/ElectAccountScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then((value) => {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => SelectAccountScreen()))
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          "assets/images/pinterestlogo.jpg",
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
