import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';

class StartLoading extends StatefulWidget {
  const StartLoading({super.key});

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<StartLoading> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }
  startTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, loginRoute);
  }
  loginRoute() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const LoginForm()
    ));
  }
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffFFBD2F),
            ),
          ),
          Positioned.fill(
            bottom: 100,
            child: Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/app-icon.png"),
            ),
          ),
          const Center(
            child: Text('Foodes App',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Product_Sans',
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
        ],
      ),
    );
  }
}