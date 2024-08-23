import 'package:flutter/material.dart';
import 'package:hostelry/screen/detail.page.dart';

class ListPage extends StatefulWidget {
  final String title;
  const ListPage({super.key, required this.title});

  @override
  State<ListPage> createState() => ListPageState(title: title);
}

class Hotel {
  final String title;
  final String location;
  final String price;

  Hotel({required this.title, required this.location, required this.price});
}

class ListPageState extends State<ListPage> {
  String title;

  ListPageState({required this.title});

  final List<Hotel> items = [
    Hotel(
        title: "The Biggest Villa Hotels",
        location: 'Jl. Pekapuran Dpk 05, Indonesia',
        price: 'Rp. 250.000'),
    Hotel(
        title: "The Biggest Villa Hotels",
        location: 'Jl. Pekapuran Dpk 05, Indonesia',
        price: 'Rp. 250.000'),
    Hotel(
        title: "The Biggest Villa Hotels",
        location: 'Jl. Pekapuran Dpk 05, Indonesia',
        price: 'Rp. 250.000'),
    Hotel(
        title: "The Biggest Villa Hotels",
        location: 'Jl. Pekapuran Dpk 05, Indonesia',
        price: 'Rp. 250.000'),
    Hotel(
        title: "The Biggest Villa Hotels",
        location: 'Jl. Pekapuran Dpk 05, Indonesia',
        price: 'Rp. 250.000'),
    Hotel(
        title: "The Biggest Villa Hotels",
        location: 'Jl. Pekapuran Dpk 05, Indonesia',
        price: 'Rp. 250.000'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Warna latar belakang AppBar
        elevation: 0, // Hilangkan shadow
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'images/logo.png', // Path to your logo image
              height: 45, // Perbesar ukuran gambar
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(12.0), // Margin untuk container
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.title,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: EdgeInsets.only(bottom: 27),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DetailPage()),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(
                              'images/hotel.png', // Mengambil lokasi gambar dari list
                              width: 400,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  items[index]
                                      .title, // Mengambil judul dari list
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_sharp,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star_sharp,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star_sharp,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star_sharp,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star_sharp,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      '5.0',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 12.0,
                              right: 12.0,
                              bottom: 5.0,
                            ),
                            child: Text(
                              items[index]
                                  .location, // Mengambil lokasi dari list
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 12.0,
                              right: 12.0,
                              bottom: 5.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  items[index]
                                      .price, // Mengambil harga dari list
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.blue,
                                  ),
                                ),
                                Text(
                                  '/Malam',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
