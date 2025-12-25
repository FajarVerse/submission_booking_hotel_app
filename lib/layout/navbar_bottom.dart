import 'package:flutter/material.dart';
import 'package:submission_booking_hotel_app/login_screen.dart';
import 'package:submission_booking_hotel_app/main_screen.dart';
import 'package:submission_booking_hotel_app/model/navbar_menu.dart';

class NavbarBottom extends StatelessWidget {
  const NavbarBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 57,
        padding: EdgeInsets.symmetric(vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: navbarMenu.map((item) {
            return InkWell(
              onTap: () {
                if (item.menu == 'Discover') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => MainScreen()),
                  );
                } else if (item.menu == 'Bookings') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => MainScreen()),
                  );
                } else if (item.menu == 'Logout') {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => LoginScreen()),
                    (route) => false,
                  );
                }
              },
              child: Column(
                children: <Widget>[
                  Icon(item.icon, size: 20, color: Colors.white),
                  Text(
                    item.menu,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
