import 'package:flutter/material.dart';
import 'package:submission_booking_hotel_app/detail_screen.dart';
import 'package:submission_booking_hotel_app/layout/header.dart';
import 'package:submission_booking_hotel_app/layout/navbar_bottom.dart';
import 'package:submission_booking_hotel_app/model/hotel.dart';

class MainScreen extends StatelessWidget {
  final String username;

  const MainScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(username: username),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Rekomendasi untuk anda",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 7),

                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        final Hotel hotel = hotelList[index];

                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailScreen(hotel: hotel);
                                },
                              ),
                            );
                          },

                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              color: Colors.white,
                              shadowColor: Colors.red,
                              child: Container(
                                padding: EdgeInsets.all(0),
                                height: 300,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          hotel.image,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 18,
                                          vertical: 10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  hotel.name,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: const Color.fromARGB(
                                                      255,
                                                      77,
                                                      76,
                                                      76,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  'Rp ${hotel.price}',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),

                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star_rate,
                                                  color: Colors.amber,
                                                ),
                                                Text(
                                                  hotel.rating.toString(),
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: hotelList.length.clamp(0, 8),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(bottom: 16, right: 16, left: 16, child: NavbarBottom()),
          ],
        ),
      ),
    );
  }
}
