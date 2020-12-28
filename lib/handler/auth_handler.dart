import 'package:firebase_auth/firebase_auth.dart';

class AuthHandler {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<FirebaseUser> signUp(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser firebaseUser = result.user;

      return firebaseUser;
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

  static Future<FirebaseUser> signIn(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;

      return user;
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

  static Future<void> signOut() async {
    _auth.signOut();
  }

  static Stream<FirebaseUser> get firebaseUserStream =>
    _auth.onAuthStateChanged;
}
