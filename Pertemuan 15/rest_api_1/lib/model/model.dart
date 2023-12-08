class Blog {
  late String color;
  late int id;
  late int year;
  late String pantone_value;
  late String name;

  Blog(this.color, this.id, this.year, this.pantone_value, this.name);

  Blog.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    id = json['id'];
    year = json['year'];
    pantone_value = json['pantone_value'];
    name = json['name'];
  }
}
