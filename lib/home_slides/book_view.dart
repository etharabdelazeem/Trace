import 'package:flutter/material.dart';

class BookView extends StatelessWidget {
  // String bookName;
  // String bookImage;
  // String bookAuthor;
  // String bookEdition;
  // String bookSize;
  // int rating;
  List<dynamic> search;
  int indexx;

  BookView({
    super.key,
    required this.search,
    required this.indexx,
  });
  // required this.bookAuthor,
  // required this.bookEdition,
  // required this.bookImage,
  // required this.bookName,
  // required this.bookSize,
  // required this.rating

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(search[indexx]['bookID']),
            Text(search[indexx]['bookName']),
            Text(search[indexx]['author']),
            // Text(search[indexx]['comments']),
            Text(search[indexx]['image']),
            Text(search[indexx]['rating']),
          ]),
    ));
  }
}
