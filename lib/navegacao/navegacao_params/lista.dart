// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_maosnamassa/navegacao/navegacao_params/detalhe.dart';

class Lista extends StatelessWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    // ignore: prefer_const_constructors
                    settings: RouteSettings(
                      name: 'detalhe',
                      arguments: {
                        'id': 10,
                      }
                    ),
                    builder: (context) => Detalhe(),
                  ),
                );
              },
              child: Text('Detalhes'),
            ),
          ],
        ),
      ),
    );
  }
}
