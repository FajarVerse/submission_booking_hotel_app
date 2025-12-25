import 'package:flutter/material.dart';

class NavbarMenu {
  String menu;
  IconData icon;

  NavbarMenu({required this.menu, required this.icon});
}

var navbarMenu = [
  NavbarMenu(menu: 'Discover', icon: Icons.explore_outlined),
  NavbarMenu(menu: 'Bookings', icon: Icons.book_online_outlined),
  NavbarMenu(menu: 'Favorite', icon: Icons.favorite_outline),
];
