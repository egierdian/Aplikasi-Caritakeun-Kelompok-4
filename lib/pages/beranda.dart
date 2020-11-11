import 'package:flutter/material.dart';

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
          backgroundColor: Color(0xFFEEEEEE),
          brightness: Brightness.light,
          title: Text('Caritakeun',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
          // centerTitle: true,
          // leading: IconButton(
          //   color: Colors.black87,
          //   icon: Icon(Icons.add),
          //   onPressed: () {
          //     print('Add');
          //   },
          // ),
          actions: <Widget>[
            IconButton(
              color: Colors.black87,
              icon: Icon(Icons.add),
              onPressed: () {
                print('Add Story clicked!');
              },
            )
          ]),
      body: Container(
          // padding
          padding: EdgeInsets.only(
            top: 10,
            right: 20,
            left: 20,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: new EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black12,
                      width: 1.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.black12,
                      width: 1.0,
                    ),
                    left: BorderSide(
                      color: Colors.black12,
                      width: 1.0,
                    ),
                    right: BorderSide(
                      color: Colors.black12,
                      width: 1.0,
                    ),
                  ),
                ),
                height: 200,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Artikel 1',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                    ]),
              ),
              Container(
                padding: new EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black12,
                      width: 1.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.black12,
                      width: 1.0,
                    ),
                    left: BorderSide(
                      color: Colors.black12,
                      width: 1.0,
                    ),
                    right: BorderSide(
                      color: Colors.black12,
                      width: 1.0,
                    ),
                  ),
                ),
                height: 200,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Artikel 2',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                    ]),
              ),
              Container(
                padding: new EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black12,
                      width: 1.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.black12,
                      width: 1.0,
                    ),
                    left: BorderSide(
                      color: Colors.black12,
                      width: 1.0,
                    ),
                    right: BorderSide(
                      color: Colors.black12,
                      width: 1.0,
                    ),
                  ),
                ),
                height: 200,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Artikel 3',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                    ]),
              ),
            ],
          )),
    );
  }
}
