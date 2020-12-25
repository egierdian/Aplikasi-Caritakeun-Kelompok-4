import 'package:flutter/material.dart';
import 'package:caritakeun_kelompok4/pages/daftar.dart';
import 'package:caritakeun_kelompok4/pages/login.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          left: 25,
          right: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.transparent,
              padding: new EdgeInsets.all(5.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Image.asset(
                      'assets/img/signin.png',
                      height: 200,
                      // color: Colors.transparent,
                    )
                  ]),
            ),
            Container(
              padding: new EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        'Nikmati berbagai koleksi novel yang dapat kamu baca secara gratis, kamu juga dapat membuat cerita mu sendiri disini.',
                        style: TextStyle(
                          fontFamily: 'Rajdhani',
                          color: Colors.black87,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: new EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                // bisa untuk border
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFF1D1735),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(1, 2),
                  ),
                ],
              ),
              // height: 200,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    FlatButton(
                      height: 30,
                      child: Text(
                        'Masuk',
                        style: TextStyle(
                          fontFamily: 'Rajdhani',
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Color(0xFF1D1735),
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                      },
                    ),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: new EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                // bisa untuk border
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFF1D1735),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(1, 2),
                  ),
                ],
              ),
              // height: 200,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    FlatButton(
                      height: 30,
                      child: Text(
                        'Daftar',
                        style: TextStyle(
                          fontFamily: 'Rajdhani',
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Color(0xFF1D1735),
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Daftar(),
                            ));
                      },
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
