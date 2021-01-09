import 'package:caritakeun_kelompok4/model/item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:caritakeun_kelompok4/handler/auth_handler.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class Artikel extends StatefulWidget {
  final Item item;
  final String id;

  Artikel({@required this.item, this.id});

  @override
  _Artikel createState() => _Artikel();
}

class _Artikel extends State<Artikel> {
  TextEditingController judulController = new TextEditingController();
  TextEditingController isiController = new TextEditingController();
  TextEditingController olehController = new TextEditingController();

  @override
  void initState() {
    judulController = TextEditingController();
    isiController = TextEditingController();
    olehController = TextEditingController();
    judulController.text = '';
    isiController.text = '';
    olehController.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.item != null) {
      judulController.text = widget.item.judul;
      isiController.text = widget.item.isi;
      olehController.text = widget.item.oleh;
    }
    final currentUser = Provider.of<MyUser>(context);
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
                              controller: judulController,
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
                              controller: olehController,
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
                              controller: isiController,
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
                              // height: 50,
                              child: Text(
                                'Submit',
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
                                Item item = Item(
                                  judul: judulController.text,
                                  isi: isiController.text,
                                  oleh: olehController.text,
                                  userid: currentUser.uid,
                                );
                                if (judulController.text == '' ||
                                    isiController.text == '' ||
                                    olehController.text == '') {
                                  showToast('Lengkapi data.');
                                } else {
                                  if (widget.item == null) {
                                    FirebaseFirestore.instance
                                        .collection('artikel')
                                        .add(item.toJson());
                                  } else {
                                    FirebaseFirestore.instance
                                        .collection('artikel')
                                        .doc(widget.id)
                                        .update(item.toJson());
                                  }
                                  Navigator.pop(context);
                                }
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

  showToast(text) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black.withOpacity(0.5),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
