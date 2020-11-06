import 'package:flutter/material.dart';
import './login/login.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Read Book TMT',
    home: Scaffold(
      body: Login(),
    ),
  ),
);
