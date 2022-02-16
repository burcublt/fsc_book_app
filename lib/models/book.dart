class Book {
  late String author;
  late String imageLink;
  late String title;

  Book({
    required this.author,
    required this.imageLink,
    required this.title,
  });

  Book.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    imageLink = json['imageLink'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['author'] = this.author;
    data['imageLink'] = this.imageLink;
    data['title'] = this.title;
    return data;
  }
}
