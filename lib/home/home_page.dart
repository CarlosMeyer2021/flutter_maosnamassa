// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_maosnamassa/navegacao/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Minha HomePage',
          style: TextStyle(fontFamily: 'Tourney'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      settings: RouteSettings(name: 'page2'),
                      builder: (context) => Page2(),
                    ),
                  );
                },
                child: Text('Page2 Via PAGE')),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Page2.routeName);
              },
              child: Text('Page 3 via Named'),
            ),
          ],
        ),
      ),
    );
  }
}
