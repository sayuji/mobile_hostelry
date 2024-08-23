import 'package:flutter/material.dart';
import 'package:hostelry/screen/edit.page.dart';
import 'package:hostelry/screen/login.page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Circular image
              Positioned(
                top: 30,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('images/iyoo.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Text Boxes
        TextContainer(text: 'Satrio Bayu Adji'),
        TextContainer(text: 'Iyoo'),
        TextContainer(text: 'satriobayuadji@gmail.com'),
        TextContainer(text: '(+62) 895 - 0430 - 0863'),
        // Edit Profile Button
        SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditPage()),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue, // Background color of the container
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: Colors.white, // Icon color
                ),
                SizedBox(width: 5),
                Text(
                  'Edit Profile',
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
        SizedBox(height: 160),
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
                        'Yakin ingin logout?',
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
                                    builder: (context) => LoginPage()),
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
                              'Batalkan',
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
                Icon(
                  Icons.logout,
                  color: Colors.white, // Icon color
                ),
                SizedBox(width: 5),
                Text(
                  'Logout',
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
      ],
    );
  }
}

class TextContainer extends StatelessWidget {
  final String text;

  const TextContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200], // Background color of the container
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center, // Center align text
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold, // Set the text to bold
        ),
      ),
    );
  }
}
