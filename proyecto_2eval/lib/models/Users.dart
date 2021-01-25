////////////////////////////////////////
////////-- CLASE DE USUARIOS --/////////
////////////////////////////////////////

class Users {
  String id;
  String name;
  String email;
  String password;

  Users({this.id, this.name, this.email, this.password});

  set setusername(String newname) {
    this.name = newname;
  }

  set setemail(String newemail) {
    this.email = newemail;
  }

  set setpassword(String newpassword) {
    this.password = newpassword;
  }

  String get getid {
    return id;
  }

  String get getname {
    return name;
  }

  String get getemail {
    return email;
  }

  String get getpassword {
    return password;
  }

  factory Users.fromJson(Map<String, dynamic> parsedJson) {
    return new Users(
        id: parsedJson['id'] as String,
        name: parsedJson['name'] as String,
        email: parsedJson['email'] as String,
        password: parsedJson['password'] as String);
  }
}
