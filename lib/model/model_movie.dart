import 'package:cloud_firestore/cloud_firestore.dart';
/* 넷플릭스 클론 앱에서 중요하게 파일들을 세분화 하여 나눠주는 클래스 단.
   title, keyword, poster(image파일임), like 좋아요 누른상태표시
   등으로 나누어 map형태로 파일화 해서 각 screen에서 활용한다. */
class Movie {
  final String title;
  final String keyword;
  final String poster;
  final bool like;
  final DocumentReference reference;

  Movie.fromMap(Map<String, dynamic> map, {this.reference})
      : title = map['title'],
        keyword = map['keyword'],
        poster = map['poster'],
        like = map['like'];

  Movie.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

/* toString를 새로 정의하여 map으로 포장된 movie상의 각각의 항목을 불러 오도록함 */
  @override
  String toString() => "Movie<$title:$keyword>"; 
}
