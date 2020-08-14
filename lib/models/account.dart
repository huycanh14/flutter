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


  /*Account.signIn({
    @required email,
    @required password,
  }) {
    this._email = email;
    this._password = password;
  }

  Account(
      {@required email,
      @required password,
      @required username,
      @required birthday,
      @required gender}) {
    this._email = email;
    this._password = password;
    this._username = username;
    this._birthday = birthday;
    this._gender = gender;
  }*/
}
