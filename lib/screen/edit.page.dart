import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  const EditPage({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
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
            EditableTextContainer(
              labelText: 'Nama',
              initialValue: 'Satrio Bayu Adji',
            ),
            EditableTextContainer(
              labelText: 'Username',
              initialValue: 'Iyoo',
            ),
            EditableTextContainer(
              labelText: 'Email',
              initialValue: 'satriobayuadji@gmail.com',
            ),
            EditableTextContainer(
              labelText: 'Telepon',
              initialValue: '(+62) 895 - 0430 - 0863',
            ),
            SizedBox(height: 230),
            GestureDetector(
              onTap: () {
                // Panggil fungsi untuk menyimpan perubahan
                _saveChanges(context);
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
                      Icons.edit,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Selesaikan Edit',
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

  void _saveChanges(BuildContext context) {
    // Disini Anda dapat menambahkan logika untuk menyimpan perubahan ke database atau penyimpanan lokal

    // Setelah penyimpanan berhasil, kembali ke halaman ProfilePage
    Navigator.pop(context);
  }
}

class EditableTextContainer extends StatelessWidget {
  final String labelText;
  final String initialValue;

  const EditableTextContainer({
    Key? key,
    required this.labelText,
    required this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextFormField(
        initialValue: initialValue,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
