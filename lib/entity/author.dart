class Author {
  String firstName;
  String lastName;

  Author({this.firstName, this.lastName});

  @override
  String toString() {
    return 'Author{firstName: $firstName, lastName: $lastName}';
  }


}