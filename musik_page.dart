import 'package:flutter/material.dart';


class MusicPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF15202B),
              Color(0xFF192734),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Now Playing',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              height: 300.0,
              width: 300.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 10.0,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150.0),
                child: Image.asset(
                  'assets/logo.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Closer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'The Chainsmokers',
              style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    // Fungsi untuk memutar lagu sebelumnya
                  },
                  icon: Icon(Icons.skip_previous),
                  iconSize: 50.0,
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {
                    // Fungsi untuk menjeda atau melanjutkan lagu
                  },
                  icon: Icon(Icons.play_arrow),
                  iconSize: 80.0,
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {
                    // Fungsi untuk memutar lagu berikutnya
                  },
                  icon: Icon(Icons.skip_next),
                  iconSize: 50.0,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    '1:10', 
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Slider(
                    onChanged: (double value) {
                     
                    },
                    value: 0.3, // Ganti dengan posisi saat ini (0-1)
                    activeColor: Colors.green,
                    inactiveColor: Colors.white.withOpacity(0.3),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    '4:19', // Ganti dengan total menit lagu
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'You look as good as the day I met you I forget just why I left you, I was insane Stay and play that Blink-182 song That we beat to death in Tucson, okay...', // Ganti dengan lirik lagu
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
