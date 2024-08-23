import 'package:flutter/material.dart';
import 'package:hostelry/screen/detail.page.dart';
import 'package:hostelry/screen/detail.pages.dart';
import 'package:hostelry/screen/list.page.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key});

  @override
  State<HomeContent> createState() => SchedulePageState();
}

class SchedulePageState extends State<HomeContent> {
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Current Location',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
              SizedBox(height: 5), // Tambahkan jarak antara teks dan ikon
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 20,
                    color: Colors.blue, // Warna ikon location
                  ),
                  SizedBox(width: 5), // Tambahkan jarak antara ikon dan teks
                  Text(
                    'Depok, Jawa Barat, Indonesia', // Teks lokasi
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
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
              Text(
                'Nearby your location', // Teks sebelah kiri
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ListPage(title: "Nearby your location")),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      'See All', // Teks sebelah kanan
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                    Icon(
                      Icons.arrow_forward_ios, // Icon di sebelah kanan teks
                      color: Colors.blue,
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
                MaterialPageRoute(builder: (context) => DetailPage()),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'images/hotel.png', // Path to your image
                    width: 400, // Lebar gambar
                    height: 150, // Tinggi gambar
                    fit: BoxFit
                        .cover, // Gambar diatur agar mengisi ruang secara proporsional
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'The Biggest Villa Hotels', // Teks sebelah kiri
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star_sharp, // Icon di sebelah kanan teks
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star_sharp, // Icon di sebelah kanan teks
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star_sharp, // Icon di sebelah kanan teks
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star_sharp, // Icon di sebelah kanan teks
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star_sharp, // Icon di sebelah kanan teks
                            color: Colors.yellow,
                          ),
                          Text(
                            '5.0', // Teks sebelah kanan
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0, left: 12, right: 12, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jl. Pekapuran Dpk 05, Indonesia', // Teks sebelah kiri
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0, left: 12, right: 12, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Rp. 250.000 ', // Teks sebelah kiri
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                      Text(
                        '/Malam', // Teks sebelah kiri
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pupular Destination', // Teks sebelah kiri
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ListPage(title: "Popular Destination")),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      'See All', // Teks sebelah kanan
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                    Icon(
                      Icons.arrow_forward_ios, // Icon di sebelah kanan teks
                      color: Colors.blue,
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
                MaterialPageRoute(builder: (context) => DetailPages()),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'images/kamar.png', // Path to your image
                    width: 100, // Lebar gambar
                    height: 100, // Tinggi gambar
                    fit: BoxFit
                        .cover, // Gambar diatur agar mengisi ruang secara proporsional
                  ),  
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Asteria Hotel', // Teks judul
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
                              'Jl. Pekapuran No.25, Indonesia', // Teks lokasi
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(height: 5), // Jarak antar elemen
                        Row(
                          children: [
                            Text(
                              'Rp. 200,000 ', // Harga
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                            Text(
                              ' /Malam', // Teks satuan harga
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
        Card(
          margin: EdgeInsets.all(12.0), // Margin untuk card
          elevation: 5, // Elevasi card untuk efek bayangan
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(15.0), // Membuat border radius untuk card
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'images/kamar.png', // Path to your image
                  width: 100, // Lebar gambar
                  height: 100, // Tinggi gambar
                  fit: BoxFit
                      .cover, // Gambar diatur agar mengisi ruang secara proporsional
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Asteria Hotel', // Teks judul
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
                            'Jl. Pekapuran No.25, Indonesia', // Teks lokasi
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: 5), // Jarak antar elemen
                      Row(
                        children: [
                          Text(
                            'Rp. 200,000 ', // Harga
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                          Text(
                            ' /Malam', // Teks satuan harga
                            style: TextStyle(fontSize: 14, color: Colors.black),
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
        Card(
          margin: EdgeInsets.all(12.0), // Margin untuk card
          elevation: 5, // Elevasi card untuk efek bayangan
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(15.0), // Membuat border radius untuk card
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'images/kamar.png', // Path to your image
                  width: 100, // Lebar gambar
                  height: 100, // Tinggi gambar
                  fit: BoxFit
                      .cover, // Gambar diatur agar mengisi ruang secara proporsional
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Asteria Hotel', // Teks judul
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
                            'Jl. Pekapuran No.25, Indonesia', // Teks lokasi
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: 5), // Jarak antar elemen
                      Row(
                        children: [
                          Text(
                            'Rp. 200,000 ', // Harga
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                          Text(
                            ' /Malam', // Teks satuan harga
                            style: TextStyle(fontSize: 14, color: Colors.black),
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
                MaterialPageRoute(builder: (context) => DetailPages()),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'images/kamar.png', // Path to your image
                    width: 100, // Lebar gambar
                    height: 100, // Tinggi gambar
                    fit: BoxFit
                        .cover, // Gambar diatur agar mengisi ruang secara proporsional
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Asteria Hotel', // Teks judul
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
                              'Jl. Pekapuran No.25, Indonesia', // Teks lokasi
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(height: 5), // Jarak antar elemen
                        Row(
                          children: [
                            Text(
                              'Rp. 200,000 ', // Harga
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                            Text(
                              ' /Malam', // Teks satuan harga
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
                MaterialPageRoute(builder: (context) => DetailPages()),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'images/kamar.png', // Path to your image
                    width: 100, // Lebar gambar
                    height: 100, // Tinggi gambar
                    fit: BoxFit
                        .cover, // Gambar diatur agar mengisi ruang secara proporsional
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Asteria Hotel', // Teks judul
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
                              'Jl. Pekapuran No.25, Indonesia', // Teks lokasi
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(height: 5), // Jarak antar elemen
                        Row(
                          children: [
                            Text(
                              'Rp. 200,000 ', // Harga
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                            Text(
                              ' /Malam', // Teks satuan harga
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
