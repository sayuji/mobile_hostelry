import 'package:flutter/material.dart';
import 'package:hostelry/screen/checkout.page.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  DateTime _checkInDate = DateTime.now();
  DateTime _checkOutDate = DateTime.now().add(Duration(days: 1));

  void _onTambahkanButtonTap() {
    print('Tambahkan button tapped!');
    print('Check-In Date: $_checkInDate');
    print('Check-Out Date: $_checkOutDate');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'images/logo.png',
              height: 45,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.transparent,
            child: Image.asset(
              'images/hotel.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.wifi,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          size: 35,
                        ),
                        Text(
                          "Free Wi-Fi",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.restaurant,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          size: 25,
                        ),
                        Text(
                          "Free Breakfast",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 234, 162, 27),
                          size: 25,
                        ),
                        Text(
                          "5.0",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 25),
                        Row(
                          children: [
                            Icon(
                              Icons.bookmark,
                              size: 35,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The Biggest Villa Hotels",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color.fromARGB(255, 94, 39, 197)
                                .withOpacity(0.5),
                            size: 20,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "jl. Pekapuran Dpk 05, Indonesia",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 240),
                            child: Text(
                              "Rp 250.000",
                              style: TextStyle(
                                color: Color.fromARGB(255, 134, 69, 255),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            " /Malam",
                            style: TextStyle(
                              color: Color.fromARGB(255, 39, 39, 39),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      // Menambahkan Widget Column kosong
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Description",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Biggest Villa, Jl. Pekapuran Dpk 05, Indonesia is a modern hotel. Elegant 5 star hotel overlooking the sea. Perfect for a romantic, charming",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              "Preview",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Container(
                              width: 70,
                              height: 70,
                              color: Colors.green,
                              child: Image.asset(
                                'images/kamar.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15, left: 10),
                            child: Container(
                              width: 70,
                              height: 70,
                              color: Colors.green,
                              child: Image.asset(
                                'images/kamarmandi.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15, left: 10),
                            child: Container(
                              width: 70,
                              height: 70,
                              color: Colors.green,
                              child: Image.asset(
                                'images/ruangan.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Check In',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextButton(
                        onPressed: () async {
                          final DateTime? newDate = await showDatePicker(
                            context: context,
                            initialDate: _checkInDate,
                            firstDate: DateTime.now(),
                            lastDate: DateTime(2030),
                          );

                          if (newDate != null) {
                            setState(() {
                              _checkInDate = newDate;
                            });
                          }
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets
                              .zero, // Menghapus padding agar ikon dan teks menempel
                        ),
                        child: Row(
                          children: [
                            Text(
                              _checkInDate.toString().split(' ')[0],
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color.fromARGB(255, 0, 0, 0),
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Check Out',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextButton(
                        onPressed: () async {
                          final DateTime? newDate = await showDatePicker(
                            context: context,
                            initialDate: _checkOutDate,
                            firstDate: _checkInDate.add(Duration(days: 1)),
                            lastDate: DateTime(2030),
                          );

                          if (newDate != null) {
                            setState(() {
                              _checkOutDate = newDate;
                            });
                          }
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets
                              .zero, // Menghapus padding agar ikon dan teks menempel
                        ),
                        child: Row(
                          children: [
                            Text(
                              _checkOutDate.toString().split(' ')[0],
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckoutPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Booking',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
