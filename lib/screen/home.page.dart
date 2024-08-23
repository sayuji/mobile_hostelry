import 'package:flutter/material.dart';
import 'package:hostelry/screen/booking.page.dart';
import 'package:hostelry/screen/home_content.page.dart';
import 'package:hostelry/screen/profile.page.dart';
import 'package:hostelry/screen/saved.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeContent(),
    BookingPage(),
    SavedPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      body: SingleChildScrollView(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_sharp, color: Colors.black),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, color: Colors.black),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.black),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

void main() {
  runApp(HomePage());
}
