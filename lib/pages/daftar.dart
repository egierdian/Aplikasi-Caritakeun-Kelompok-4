import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:caritakeun_kelompok4/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:caritakeun_kelompok4/handler/auth_handler.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Daftar extends StatefulWidget {
  @override
  _DaftarState createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final globalKey = GlobalKey<ScaffoldState>();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
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
                padding: EdgeInsets.only(
                  top: 0,
                  right: 25,
                  left: 25,
                  bottom: 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Container(
                    //   color: Colors.transparent,
                    //   padding: new EdgeInsets.all(5.0),
                    //   child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.stretch,
                    //       children: <Widget>[
                    //         new Image.asset(
                    //           'assets/img/signup.png',
                    //           height: 150,
                    //         )
                    //       ]),
                    // ),
                    Container(
                      padding: new EdgeInsets.only(
                        right: 5,
                        left: 5,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                labelText: 'Email',
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
                        right: 5,
                        left: 5,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            TextField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Rajdhani',
                                ),
                              ),
                              autofocus: false,
                              obscureText: true,
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
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            FlatButton(
                              // height: 0,
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
                              onPressed: () async {
                                if (emailController.text == '' ||
                                    passwordController.text == '') {
                                  showToast('Lengkapi data');
                                } else {
                                  await AuthHandler().signUp(
                                      emailController.text,
                                      passwordController.text);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Login(),
                                      ));
                                }
                              },
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: new EdgeInsets.only(
                        bottom: 0,
                        top: 20,
                        right: 10,
                        left: 10,
                      ),

                      // height: 200,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: Text(
                                'Sudah punya akun?',
                                style: TextStyle(
                                  fontFamily: 'Rajdhani',
                                  color: Colors.black87,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            FlatButton(
                              padding: new EdgeInsets.only(
                                right: 50,
                                left: 50,
                              ),
                              child: Text(
                                'Masuk',
                                style: TextStyle(
                                  fontFamily: 'Rajdhani',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              color: Colors.transparent,
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
                  ],
                )),
          ],
        ),
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
