class Users {
  String username;
  String email;
  String password;

  Users({this.username, this.email, this.password});

  set setusername(String newusername) {
    this.username = newusername;
  }

  set setemail(String newemail) {
    this.username = newemail;
  }

  set setpassword(String newpassword) {
    this.password = newpassword;
  }

  String get getusername {
    return username;
  }

  String get getemail {
    return email;
  }

  String get getpassword {
    return password;
  }
}
