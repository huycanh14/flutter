class Account {
  String _email = "";
  String _password = "";
  String _username = "";
  DateTime _birthday = DateTime.now();
  bool _gender = true;

  String get email => _email;
  String get password => _password;
  String get username => _username;
  DateTime get birthday => _birthday;
  bool get gender => _gender;
}
