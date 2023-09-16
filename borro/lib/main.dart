import 'package:borro/login.dart';
import 'package:flutter/material.dart';
import 'package:borro/lend.dart';
import 'package:borro/post.dart';
import 'package:borro/otp.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {'login': (context) => Otp()},
  ));
}
