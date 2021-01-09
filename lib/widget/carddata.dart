import 'package:caritakeun_kelompok4/main.dart';
import 'package:caritakeun_kelompok4/model/item.dart';
import 'package:caritakeun_kelompok4/pages/artikel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class CardData extends StatefulWidget {
  final Item item;
  final String id;

  CardData({@required this.item, this.id});
  // CardData({@required this.item});

  @override
  _CardData createState() => _CardData();
}

class _CardData extends State<CardData> {
  @override
  Widget build(BuildContext context) {
    final currentUser = Provider.of<MyUser>(context);

    return Container(
      // color: Colors.black,
      // height: 250,
      // width: 150,
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
                    widget.item.judul,
                    style: TextStyle(
                      fontFamily: 'Rajdhani',
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    widget.item.isi,
                    style: TextStyle(
                      fontFamily: 'Rajdhani',
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.item.oleh,
                        style: TextStyle(
                          fontFamily: 'Rajdhani',
                          color: Colors.black87,
                          fontSize: 16,
                        ),
                      ),
                      Visibility(
                        visible: widget.item.userid == currentUser.uid
                            ? true
                            : false,
                        child: Row(
                          children: <Widget>[
                            InkWell(
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                  fontFamily: 'Rajdhani',
                                  color: Colors.black87,
                                  fontSize: 16,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Artikel(
                                      item: widget.item,
                                      id: widget.id,
                                    ),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              child: Text(
                                'Hapus',
                                style: TextStyle(
                                  fontFamily: 'Rajdhani',
                                  color: Colors.black87,
                                  fontSize: 16,
                                ),
                              ),
                              onTap: () {
                                FirebaseFirestore.instance
                                    .collection('artikel')
                                    .doc(widget.id)
                                    .delete();
                                showToast('Berhasil Dihapus');
                              },
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ],
      ),
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
