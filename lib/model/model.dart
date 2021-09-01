class emarket {
  int id;
  String name;
  String phone;
  String email;
  String password;
  String content;

  emarket(this.id, this.name, this.email, this.password, this.phone);

  emarket.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.phone = json['phone'];
    this.email = json['email'];
    this.password = json['password'];
    this.content = json['content'];
  }
}
