class PersonPeople{
  String name;
  String _gender;

  // setter
  set setName(String name) {
    this.name = name;
  }

  // getter 这里没有小括号
  String get getName {
    return name;
  }

  set setGender(String gender) {
    this._gender = gender;
  }

  String get getGender => _gender;
}