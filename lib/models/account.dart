import 'package:login_app/services/auth.dart';

class Account {
  String _uid = "";
  String _email = "";
  String _password = "";
  String _username = "";
  DateTime _birthday = DateTime.now();
  bool _gender = true;

  String get uid => _uid;
  String get email => _email;
  String get password => _password;
  String get username => _username;
  DateTime get birthday => _birthday;
  bool get gender => _gender;

  void updateEmail(String email) {
    _email = email;
  }

  void updatePassword(String password) {
    _password = password;
  }

  final _auth = new AuthService();
  signInWithEmailAndPassword() {
    return _auth.signInWithEmailAndPassword(email: _email, password: _password);
  }
}
