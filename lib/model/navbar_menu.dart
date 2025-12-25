import 'package:flutter/material.dart';
import 'package:submission_booking_hotel_app/login_screen.dart';
import 'package:submission_booking_hotel_app/main_screen.dart';

class NavbarMenu {
  String menu;
  IconData icon;

  NavbarMenu({required this.menu, required this.icon});
}

var navbarMenu = [
  NavbarMenu(menu: 'Discover', icon: Icons.explore_outlined),
  NavbarMenu(menu: 'Bookings', icon: Icons.book_online_outlined),
  NavbarMenu(menu: 'Logout', icon: Icons.logout),
];
