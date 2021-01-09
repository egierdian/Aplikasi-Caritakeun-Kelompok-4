import 'package:firebase_auth/firebase_auth.dart';

import '../main.dart';

class AuthHandler {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Stream<MyUser> get getCurrentUser {
    return _auth.authStateChanges().map((User user) => _refereeFromFirebaseUser(
        user)); // Also works with "_auth.idTokenChanges()" or "_auth.userChanges()"
  }

  MyUser _refereeFromFirebaseUser(User _authUser) {
    return (_authUser != null) ? MyUser(uid: _authUser.uid) : null;
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<void> signUp(String email, String password) async {
    try {
      //AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // static FirebaseAuth _auth = FirebaseAuth.instance;

  // static Future<FirebaseUser> signUp(String email, String password) async {
  //   try {
  //     AuthResult result = await _auth.createUserWithEmailAndPassword(
  //         email: email, password: password);
  //     FirebaseUser firebaseUser = result.user;

  //     return firebaseUser;
  //   } catch (err) {
  //     print(err.toString());
  //     return null;
  //   }
  // }

  // static Future<FirebaseUser> signIn(String email, String password) async {
  //   try {
  //     AuthResult result = await _auth.signInWithEmailAndPassword(
  //         email: email, password: password);
  //     FirebaseUser user = result.user;

  //     return user;
  //   } catch (err) {
  //     print(err.toString());
  //     return null;
  //   }
  // }

  // static Future<void> signOut() async {
  //   _auth.signOut();
  // }

  // static Stream<FirebaseUser> get firebaseUserStream =>
  //     _auth.onAuthStateChanged;
}
