import 'package:flutter/material.dart';
import 'package:submission_booking_hotel_app/model/hotel.dart';

class DetailScreen extends StatelessWidget {
  final Hotel hotel;

  const DetailScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(hotel.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 20,
                        ),
                        child: CircleAvatar(
                          backgroundColor: const Color.fromARGB(
                            176,
                            105,
                            105,
                            105,
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1.0,
                          color: const Color.fromARGB(105, 61, 61, 61),
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          hotel.name,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),

                        SizedBox(height: 3.5),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.star_rate, size: 20),
                            Text(
                              hotel.rating.toString(),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1.0,
                          color: const Color.fromARGB(105, 61, 61, 61),
                        ),
                      ),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 2,
                          children: <Widget>[
                            Text(
                              hotel.city,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              hotel.location,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 113, 113, 113),
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),

                        Icon(Icons.location_on_rounded, size: 35),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: SizedBox(
                    height: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: hotel.imageList.map((image) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(10),
                            child: Image.asset(image),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: hotel.facilities.map((facility) {
                      return DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 8,
                          ),
                          child: Text(
                            facility,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    top: 2,
                    bottom: 50,
                    left: 20,
                    right: 20,
                  ),
                  child: Text(
                    hotel.description,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 25,
            right: 16,
            left: 16,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 65,
                padding: EdgeInsets.only(left: 20, right: 8),
                decoration: BoxDecoration(color: Colors.black),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Rp. ${hotel.price}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 50,

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: DecoratedBox(
                          decoration: BoxDecoration(color: Colors.white),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
