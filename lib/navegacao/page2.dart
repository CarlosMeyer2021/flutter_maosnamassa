// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:flutter_maosnamassa/navegacao/page3.dart';

class Page2 extends StatelessWidget {

  static final String routeName = '/page';
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      settings: RouteSettings(name: 'page3'),
                      builder: (context) => Page3(),
                    ),
                  );
                },
                child: Text('Page 3 via PAGE')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('pop')),

            ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamed('/page3');
            }, child: Text('Page 3 via Named')),
          ],
        ),
      ),
    );
  }
}
