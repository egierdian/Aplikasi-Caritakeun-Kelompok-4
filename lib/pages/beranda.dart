import 'package:caritakeun_kelompok4/model/item.dart';
import 'package:caritakeun_kelompok4/widget/carddata.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:caritakeun_kelompok4/pages/artikel.dart';
import 'package:caritakeun_kelompok4/handler/auth_handler.dart';
import 'package:provider/provider.dart';

import '../main.dart';

class Beranda extends StatefulWidget {
  final AuthHandler _auth = AuthHandler();

  // final currentUser = Provider.of<MyUser>(context);
  // Beranda(this.currentUser);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
          centerTitle: true,
          leading: CloseButton(
            color: Colors.white,
            onPressed: () async {
              await AuthHandler().signOut();
            },
          ),
          actions: <Widget>[
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Artikel(
                        item: null,
                      ),
                    ));
              },
            )
          ]),
      body: Container(
        // height: 260,
        padding: EdgeInsets.all(5),
        color: Colors.white,
        child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('artikel').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                // child: CircularProgressIndicator(),
                child: Text('Data tidak ditemukan'),
              );
            }

            return ListView(
              scrollDirection: Axis.vertical,
              children: snapshot.data.docs.map((document) {
                Item item = Item(
                    judul: document['judul'],
                    isi: document['isi'],
                    oleh: document['oleh'],
                    userid: document['userid']);
                return CardData(item: item, id: document.id);
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
