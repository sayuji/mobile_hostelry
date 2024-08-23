import 'package:flutter/material.dart';
import 'package:hostelry/screen/checkout.pages.dart';
import 'package:hostelry/screen/home.page.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  DateTime _checkInDate = DateTime.now();
  DateTime _checkOutDate = DateTime.now().add(Duration(days: 1));
  int _selectedRoom = 1;
  String _selectedLocation = 'Depok, Jawa Barat';

  final List<String> _roomTypes = ['Single', 'Double'];
  final List<String> _locations = ['Depok, Jawa Barat'];

  void _onTambahkanButtonTap() {
    print('Tambahkan button tapped!');
    print('Selected Location: $_selectedLocation');
    print('Check-In Date: $_checkInDate');
    print('Check-Out Date: $_checkOutDate');
    print('Selected Room: $_selectedRoom');
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            DropdownButton<String>(
              borderRadius: BorderRadius.circular(2),
              value: _selectedLocation,
              items: _locations.map((location) {
                return DropdownMenuItem<String>(
                  value: location,
                  child: Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(width: 8),
                      Text(location),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedLocation = value!;
                });
              },
            ),
            SizedBox(height: 16),
            Row(
              children: [
                SizedBox(width: 8),
                Text(
                  'Your Hotel',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_drop_up),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      width: 250,
                      height: 250,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  FadeTransition(
                                opacity: animation1,
                                child: CheckoutPages(),
                              ),
                              transitionDuration: Duration(milliseconds: 30),
                            ),
                          );
                        },
                        child: Card(
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'images/kamar.png',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 150,
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text(
                                        'The Biggest Villa Hotels',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 1),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 23,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 15),
                                        child: Text(
                                          '5.0',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 15),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 50),
                                    child: Text(
                                      'Jl.Pekapuran Dpk 05, Indonesia',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(111, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
                  Container(
                      width: 250,
                      height: 250,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  FadeTransition(
                                opacity: animation1,
                                child:
                                    CheckoutPages(), // Ganti 'NextScreen()' dengan nama kelas layar selanjutnya
                              ),
                              transitionDuration: Duration(milliseconds: 30),
                            ),
                          );
                        },
                        child: Card(
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'images/kamar.png',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 150,
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text(
                                        'The Biggest Villa Hotels',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 1),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 23,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 15),
                                        child: Text(
                                          '5.0',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 15),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 50),
                                    child: Text(
                                      'Jl.Pekapuran Dpk 05, Indonesia',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(111, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Check In',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                SizedBox(width: 15), // Menambahkan jarak antara teks dan tombol
                TextButton(
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
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Check Out',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                SizedBox(width: 15),
                TextButton(
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
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Room',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  '$_selectedRoom',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 8),
                DropdownButton<String>(
                  value: _roomTypes[_selectedRoom - 1],
                  items: _roomTypes
                      .map((e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedRoom = _roomTypes.indexOf(value!) + 1;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                // Menampilkan popup dari bawah ketika tombol logout ditekan
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Yakin ingin membatakan Booking?',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context); // Tutup popup
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                ),
                                child: Text(
                                  'Ya',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context); // Tutup popup
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                ),
                                child: Text(
                                  'Tidak',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Batalkan Booking',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Text color
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
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
                      Icons.arrow_back_ios_sharp,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Kembali Ke halaman Utama',
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
      ),
    );
  }
}
