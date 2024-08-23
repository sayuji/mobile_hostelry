import 'package:flutter/material.dart';
import 'package:hostelry/screen/checkout.page.dart';

class CheckoutPages extends StatefulWidget {
  @override
  _CheckoutPagesState createState() => _CheckoutPagesState();
}

class _CheckoutPagesState extends State<CheckoutPages> {
  DateTime _checkInDate = DateTime.now();
  DateTime _checkOutDate = DateTime.now().add(Duration(days: 1));
  int _selectedRoom = 1;
  String _selectedLocation = 'Depok, Jawa Barat'; // Default location

  final List<String> _roomTypes = ['Single', 'Double'];
  final List<String> _locations = ['Depok, Jawa Barat']; // Only one location

  void _onTambahkanButtonTap() {
    // Perform the action you want when the button is tapped
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
        title: Text('Schedule'),
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
                      Icon(Icons.location_on), // Icon di sini
                      SizedBox(width: 8), // Jarak antara ikon dan teks
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
            Text(
              'Your Hotel',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          FadeTransition(
                        opacity: animation1,
                        child:
                            CheckoutPage(), // Ganti 'NextScreen()' dengan nama kelas layar selanjutnya
                      ),
                      transitionDuration: Duration(milliseconds: 30),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      'The Biggest Villa Hotels',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down,
                        color: Colors.black,
                        size: 25), // Ganti dengan ikon yang kamu inginkan
                  ],
                )),
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
            SizedBox(height: 15),
            SizedBox(
              width: 5,
            ),
            SizedBox(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade400,
                ),
                onPressed: () {
                  print('Tombol Submit Ditekan');
                },
                child: SizedBox(
                  width: 100,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Tambahkan"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
