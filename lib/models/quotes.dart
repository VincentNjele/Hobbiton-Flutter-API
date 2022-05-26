
class Quotes {
  String? text;
  String? author;

  Quotes({this.text, this.author});

  Quotes.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    author = json['author'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['author'] = this.author;
    return data;
  }
}