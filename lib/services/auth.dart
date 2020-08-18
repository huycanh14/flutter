import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign in anon: đăng nhập ẩn danh
  Future signInAnonymous() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (err) {
      return null;
    }
  }

  // create user obj based on FirebaseUser
  FirebaseUser _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? user : null;
  }
  // Sign in with email and password

  signInWithEmailAndPassword({@required email, @required password}) async {
    try {
      AuthResult user = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return _userFromFirebaseUser(user.user);
    } catch (err) {
      return null;
    }
  }

  //register with email, password

  //sign out
}
