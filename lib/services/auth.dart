import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign in anon: đăng nhập ẩn danh
  Future signInAnonymous() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (err) {
      print(err.toString());
      return null;
    }
  }
  // create user obj based on FirebaseUser 
  FirebaseUser _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? user : null;
  }

  // Auth change user stream
  // Stream<FirebaseUser> get user {
  //   return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  // }

  // Sign in with email and password
  

  //register with email, password

  //sign out
}
