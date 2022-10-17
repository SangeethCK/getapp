class ListData {
  final int id;
  final String name;
  final String email;
  final String gender;
  final String status;

  ListData.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        gender = json['gender'],
        status = json['status'];

  // {
  //   id = json['id'];
  //   name = json['name'];
  //   email = json['email'];
  //   gender = json['gender'];
  //   status = json['status'];
  // }

 
}
