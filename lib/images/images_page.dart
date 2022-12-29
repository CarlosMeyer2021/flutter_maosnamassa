// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Image.asset(
                'assets/images/paisagem.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/paisagem.jpg'),
                ),
              ),
              color: Colors.red,
              child: Text('Imagem Flutter'),
            ),
          ],
        ),
      ),
    );
  }
}
