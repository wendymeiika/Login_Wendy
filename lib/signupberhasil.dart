import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(
    MaterialApp(
      home: Loginsukses(),
    ),
  );
}

class Loginsukses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Container(
            height: 350,
            alignment: Alignment.bottomCenter,
            child: Text(
              'Selamat Anda Berhasil Mendaftar',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
          ),
          FlatButton(
            child: Text(
              'Ke halaman Login',
              style: TextStyle(color: Colors.pink[800]),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return BelajarForm();
                }),
              );
            },
          ),
        ]),
      ),
    );
  }
}
