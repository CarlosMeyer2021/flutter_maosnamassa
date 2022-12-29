// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_maosnamassa/navegacao/navegacao_params/detalhe.dart';

class Lista extends StatelessWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(
                      name: 'detalhe',
                      arguments: {
                        'id': 10
                      }
                    ),
                    builder: (context) => Detalhe(),
                  ),
                );
              },
              child: Text('detalhes'),
            ),
          ],
        ),
      ),
    );
  }
}
