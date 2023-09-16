import 'package:flutter/material.dart';

void main() {
  runApp(Otp());
}

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(10, 38, 71, 1),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/bg2.png',
                  ),
                  Image.asset(
                    'assets/bg1.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
