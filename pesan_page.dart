import 'package:flutter/material.dart';



class MessageMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Pesan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Aksi yang akan dijalankan saat tombol ditekan
                // Misalnya, tampilkan pesan bahwa tombol pertama ditekan
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Pesan Pertama'),
                      content: Text('Tombol pertama ditekan!'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Tutup'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Pesan Pertama'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aksi yang akan dijalankan saat tombol ditekan
                // Misalnya, tampilkan pesan bahwa tombol kedua ditekan
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Pesan Kedua'),
                      content: Text('Tombol kedua ditekan!'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Tutup'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Pesan Kedua'),
            ),
          ],
        ),
      ),
    );
  }
}
