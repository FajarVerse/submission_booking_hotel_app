import 'package:flutter/material.dart';
import 'package:submission_booking_hotel_app/login_screen.dart';
import 'package:submission_booking_hotel_app/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking App',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: LoginScreen(),
    );
  }
}
