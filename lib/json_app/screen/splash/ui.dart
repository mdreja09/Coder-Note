import 'package:flutter/material.dart';
import '../home/ui.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  autoNavigate() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  void initState() {
    autoNavigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F5F9),
        body: Center(child: Image.asset("assets/offline_logo.jpg")));
  }
}
