
class Item {
  final int id;
  final String name;
  final String email;
  final String cover_pic;
  final String auth_pic;
  final String add_pic;
  final String district;
  final String location;
  final String phone1;
  final String phone2;
  final String details;
  final String distance;


  Item({
    this.id,
    this.name,
    this.email,
    this.cover_pic,
    this.auth_pic,
    this.add_pic,
    this.district,
    this.location,
    this.phone1,
    this.phone2,
    this.details,
    this.distance,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    id: int.parse(json["id"].toString()),
    name: json["name"].toString(),
    email: json["email"].toString(),
    phone1: json["phone1"].toString(),
    phone2: json["phone2"].toString(),
    cover_pic: json["cover_pic"].toString(),
    auth_pic: json["auth_pic"].toString(),
    add_pic: json["add_pic"].toString(),
    district: json["district"].toString(),
    location: json["location"].toString(),
    details: json["details"].toString(),
    distance: json["distance"].toString(),
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = new Map<String, dynamic>();
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone1'] = this.phone1;
    data['phone2'] = this.phone2;
    data['cover_pic'] = this.cover_pic;
    data['auth_pic'] = this.auth_pic;
    data['add_pic'] = this.add_pic;
    data['location'] = this.location;
    data['district'] = this.district;
    data['details'] = this.details;
    data['distance'] = this.distance;
  }
}