import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Artikel extends StatefulWidget {
  @override
  _Artikel createState() => _Artikel();
}

class _Artikel extends State<Artikel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF1D1735),
        brightness: Brightness.light,
        title: Text('Caritakeun',
            style: TextStyle(
              fontFamily: 'Rajdhani',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            )),
      ),
      body: Builder(builder: (BuildContext context) {
        return ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(
                  top: 10,
                  right: 20,
                  left: 20,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      padding: new EdgeInsets.only(
                        right: 10,
                        left: 10,
                        top: 0,
                        bottom: 5,
                      ),
                      decoration: BoxDecoration(
                        // bisa untuk border
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(1, 2),
                          ),
                        ],
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            TextField(
                              // controller: usernameController,
                              decoration: InputDecoration(
                                labelText: 'Judul',
                                labelStyle: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Rajdhani',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: new EdgeInsets.only(
                        right: 10,
                        left: 10,
                        top: 0,
                        bottom: 5,
                      ),
                      decoration: BoxDecoration(
                        // bisa untuk border
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(1, 2),
                          ),
                        ],
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            TextField(
                              // controller: usernameController,
                              decoration: InputDecoration(
                                labelText: 'Oleh',
                                labelStyle: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Rajdhani',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: new EdgeInsets.only(
                        right: 10,
                        left: 10,
                        top: 0,
                        bottom: 5,
                      ),
                      decoration: BoxDecoration(
                        // bisa untuk border
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(1, 2),
                          ),
                        ],
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            TextField(
                              // controller: usernameController,
                              decoration: InputDecoration(
                                labelText: 'Isi',
                                labelStyle: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Rajdhani',
                                ),
                              ),
                              maxLines: null,
                              keyboardType: TextInputType.multiline,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      padding: new EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        // bisa untuk border
                        borderRadius: BorderRadius.circular(10),
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
                              height: 50,
                              child: Text(
                                'DAFTAR',
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
                                // showToast('Username Password Salah');
                              },
                            ),
                          ]),
                    ),
                  ],
                )),
          ],
        );
      }),
    );
  }
}
