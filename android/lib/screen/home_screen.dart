import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Galeri Gambar'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              buildImage('https://picsum.photos/id/048/300/200'),
              buildImage('https://picsum.photos/id/049/300/200'),
              buildImage('https://picsum.photos/id/050/300/200'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          imageUrl,
          width: 150,
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
