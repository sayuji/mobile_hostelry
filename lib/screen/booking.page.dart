import 'package:flutter/material.dart';
import 'package:hostelry/screen/checkout.page.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key});

  @override
  State<BookingPage> createState() => SchedulePageState();
}

class SchedulePageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search Location...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  // Aksi ketika tombol sort diklik
                },
                child: Row(
                  children: [
                    Icon(Icons.sort, color: Colors.black),
                    Text(
                      'Sort', // Teks untuk ikon sort
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Text(
                '|', // Garis pemisah
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              TextButton(
                onPressed: () {
                  // Aksi ketika tombol filter diklik
                },
                child: Row(
                  children: [
                    Icon(Icons.filter_alt, color: Colors.black),
                    Text(
                      'Filter', // Teks untuk ikon filter
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Text(
                '|', // Garis pemisah
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              TextButton(
                onPressed: () {
                  // Aksi ketika tombol maps diklik
                },
                child: Row(
                  children: [
                    Icon(Icons.map, color: Colors.black),
                    Text(
                      'Maps', // Teks untuk ikon maps
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(12.0), // Margin untuk card
          elevation: 5, // Elevasi card untuk efek bayangan
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(15.0), // Membuat border radius untuk card
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckoutPage()),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'images/Hotel.png', // Path to your image
                    width: 100, // Lebar gambar
                    height: 100, // Tinggi gambar
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The Biggest Villa Hotels', // Teks judul
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5), // Jarak antar elemen
                        Row(
                          children: [
                            Icon(
                              Icons.location_on, // Icon lokasi
                              size: 16,
                              color: Colors.blue,
                            ),
                            SizedBox(width: 5), // Jarak antara ikon dan teks
                            Text(
                              'Jl. Pekapuran Dpk.05, Indonesia', // Teks lokasi
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(height: 5), // Jarak antar elemen
                        Row(
                          children: [
                            Text(
                              'Rp. 250,000 ', // Harga
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                            Text(
                              ' /Malam',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              'Check-In : 2024-05-02',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
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
      ],
    );
  }
}
