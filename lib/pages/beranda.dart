import 'package:flutter/material.dart';
import 'package:caritakeun_kelompok4/pages/artikel.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
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
          actions: <Widget>[
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Artikel(),
                    ));
              },
            )
          ]),
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
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: new EdgeInsets.all(10.0),
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
                      // height: 200,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Kita adalah masa kebahagiaan yang terlewat',
                              style: TextStyle(
                                fontFamily: 'Rajdhani',
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                              style: TextStyle(
                                fontFamily: 'Rajdhani',
                                color: Colors.black87,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Oleh Ranti',
                              style: TextStyle(
                                fontFamily: 'Rajdhani',
                                color: Colors.black87,
                                fontSize: 14,
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: new EdgeInsets.all(10.0),
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
                      // height: 200,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Kita adalah masa kebahagiaan yang terlewat',
                              style: TextStyle(
                                fontFamily: 'Rajdhani',
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                              style: TextStyle(
                                fontFamily: 'Rajdhani',
                                color: Colors.black87,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Oleh Ranti',
                              style: TextStyle(
                                fontFamily: 'Rajdhani',
                                color: Colors.black87,
                                fontSize: 14,
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: new EdgeInsets.all(10.0),
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
                      // height: 200,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Bermakna Banyak',
                              style: TextStyle(
                                fontFamily: 'Rajdhani',
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                              style: TextStyle(
                                fontFamily: 'Rajdhani',
                                color: Colors.black87,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Oleh Ranti',
                              style: TextStyle(
                                fontFamily: 'Rajdhani',
                                color: Colors.black87,
                                fontSize: 14,
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: new EdgeInsets.all(10.0),
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
                      // height: 200,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Artikel 1',
                              style: TextStyle(
                                fontFamily: 'Rajdhani',
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                              style: TextStyle(
                                fontFamily: 'Rajdhani',
                                color: Colors.black87,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Oleh Ranti',
                              style: TextStyle(
                                fontFamily: 'Rajdhani',
                                color: Colors.black87,
                                fontSize: 14,
                              ),
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
