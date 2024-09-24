//const imageRoot = "https://archive.org/services/get-item-image.php?identifier=";

class Book {
  final String poster;
  final String bookCover;
  final String title;
  final String author;

  final String summary;
  final String audioUrl;

  final List<Chapters> chapters;

  Book(
      {required this.poster,
      required this.bookCover,
      required this.title,
      required this.author,
      required this.summary,
      required this.audioUrl,
      required this.chapters});
}

class Chapters {
  final int chapterId;
  final String chapterName;
  final String chapterUrl;

  Chapters(
      {required this.chapterId,
      required this.chapterName,
      required this.chapterUrl});
}
// class Books {
//   final String title;
//   final String id;
//   final String? description;
//   final String? totalTime;
//   final String? author;
//   final DateTime? date;
//   final int? downloads;
//   final List<dynamic>? subject;
//   final int? size;
//   final double? rating;
//   final int? reviews;

//   Book.fromJson(Map jsonBook)
//       : id = jsonBook["identifier"] ?? '',
//         title = jsonBook["title"] ?? '',
//         totalTime = jsonBook["runtime"],
//         author = jsonBook["creator"],
//         date =
//             jsonBook['date'] != null ? DateTime.parse(jsonBook["date"]) : null,
//         downloads = jsonBook["downloads"],
//         subject = jsonBook["subject"] is String
//             ? [jsonBook["subject"]]
//             : jsonBook["subject"],
//         size = jsonBook["item_size"],
//         rating = jsonBook["avg_rating"] != null
//             ? double.parse(jsonBook["avg_rating"].toString())
//             : null,
//         reviews = jsonBook["num_reviews"],
//         description = jsonBook["description"];

//   Book.fromDB(Map jsonBook)
//       : id = jsonBook["identifier"] ?? '',
//         title = jsonBook["title"] ?? '',
//         totalTime = jsonBook["runtime"],
//         author = jsonBook["creator"],
//         date = DateTime.fromMillisecondsSinceEpoch(int.parse(jsonBook["date"])),
//         downloads = jsonBook["downloads"],
//         subject = jsonBook["subject"].split(';'),
//         size = jsonBook["item_size"],
//         rating = jsonBook["avg_rating"] != null
//             ? double.parse(jsonBook["avg_rating"])
//             : null,
//         reviews = jsonBook["num_reviews"],
//         description = jsonBook["description"];

//   static List<Book> fromJsonArray(List jsonBook) {
//     List<Book> books = <Book>[];
//     for (var book in jsonBook) {
//       books.add(Book.fromJson(book));
//     }
//     return books;
//   }

//   static List<Book> fromDbArray(List jsonBook) {
//     List<Book> books = <Book>[];
//     for (var book in jsonBook) {
//       books.add(Book.fromDB(book));
//     }
//     return books;
//   }

//   Map<String, dynamic> toMap() {
//     return Map<String, dynamic>.from({
//       "identifier": id,
//       "title": title,
//       "description": description,
//       "runtime": totalTime,
//       "creator": author,
//       "date": date!.millisecondsSinceEpoch.toString(),
//       "downloads": downloads,
//       "subject": subject!.join(";"),
//       "item_size": size,
//       "avg_rating": rating,
//       "num_reviews": reviews,
//     });
//   }

//   String? getIdentifier() {
//     return id;
//   }

//   String get image => "$imageRoot${getIdentifier()}";
// }

// // khalil fuck evreyone expecpt ali
// const String _base = "https://archive.org/download";

// class Chapter {
//   final String? bookId;
//   final String? title;
//   final String? name;
//   final String? url;
//   final double? length;
//   final int? track;
//   final int? size;

//   Chapter.fromJson(Map json)
//       : bookId = json["book_id"],
//         title = json["title"],
//         name = json["name"],
//         track = int.parse(json["track"].split("/")[0]),
//         size = int.parse(json["size"]),
//         length = double.parse(json["length"]),
//         url = "$_base/${json['book_id']}/${json['name']}";

//   Chapter.fromDB(Map json)
//       : bookId = json["book_id"],
//         title = json["title"],
//         name = json["name"],
//         track = json["track"],
//         size = json["size"],
//         length = json["length"],
//         url = json["url"];

//   static List<Chapter> fromJsonArray(List json) {
//     List<Chapter> audiofiles = <Chapter>[];
//     for (var audiofile in json) {
//       audiofiles.add(Chapter.fromJson(audiofile));
//     }
//     return audiofiles;
//   }

//   static List<Chapter> fromDBArray(List json) {
//     List<Chapter> audiofiles = <Chapter>[];
//     for (var audiofile in json) {
//       audiofiles.add(Chapter.fromDB(audiofile));
//     }
//     return audiofiles;
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       "name": name,
//       "book_id": bookId,
//       "url": url,
//       "title": title,
//       "length": length,
//       "track": track,
//       "size": size
//     };
//   }

//   String toJson() {
//     return json.encode(toMap());
//   }

//   static String toJsonArray(List<Chapter> audiofiles) {
//     return json
//         .encode(audiofiles.map((audiofile) => audiofile.toMap()).toList());
//   }
// }
