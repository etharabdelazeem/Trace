import 'package:TRACE/constants/my_widgets.dart';
import 'package:TRACE/home_slides/book_view.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SearchSlide extends StatefulWidget {
  const SearchSlide({super.key});

  @override
  State<SearchSlide> createState() => _SearchSlideState();
}

class _SearchSlideState extends State<SearchSlide> {
  // final controllerID = TextEditingController();
  // final controllerName = TextEditingController();
  // final controllerPw = TextEditingController();

  static List searchResult = [];
  void search(String query) async {
    final result = await FirebaseFirestore.instance
        .collection('books')
        .where('bookID', arrayContains: query)
        .get();

    setState(() {
      searchResult = result.docs.map((e) => e.data()).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Search',
          textAlign: TextAlign.center,
          style: TextStyle(color: primaryColordark),
        ),
        elevation: 0.0,
        backgroundColor: primaryColorLight,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: TextField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), hintText: "Enter book name:"),
              onChanged: (query) {
                search(query);
              },
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: searchResult.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookView(
                                search: searchResult,
                                indexx: index,
                              )));
                },
                title: Text(searchResult[index]['bookName']),
                subtitle: Text(searchResult[index]['author']),
              );
            },
          )),
          // StreamBuilder(
          //   stream: readBooks(),
          //   builder: (context, snapshot) {
          //     if (snapshot.hasError) {
          //       return const Text('SomeThing Went Wrong!');
          //     } else if (snapshot.hasData) {
          //       final books = snapshot.data!;

          //       return ListView(
          //         children: books.map(buildBook).toList(),
          //       );
          //     } else {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     }
          //   },
          // ),
        ],
      ),
    );
  }

  // InputDecoration decorations(String label) => InputDecoration(
  //       labelText: label,
  //       border: const OutlineInputBorder(),
  //     );

  // Future createBook(Book book) async {
  //   final docBook = FirebaseFirestore.instance.collection('books').doc();
  //   book.bookId = docBook.id;
  //   final json = book.toJson();

  //   await docBook.set(json);
  // }

  Stream<List<Book>> readBooks() => FirebaseFirestore.instance
      .collection('books')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => Book.fromJson(doc.data())).toList());

  Widget buildBook(Book book) => ListTile(
        leading: CircleAvatar(child: Text(book.bookName)),
        title: Text(book.bookId),
        subtitle: Text(book.author),
      );
}

class Book {
  String bookId;
  final String bookName;
  final String author;

  Book({required this.bookId, required this.bookName, required this.author});

  Map<String, dynamic> toJson() => {
        'bookID': bookId,
        'bookName': bookName,
        'author': author,
      };

  static Book fromJson(Map<String, dynamic> json) => Book(
      bookId: json['bookID'],
      bookName: json['bookName'],
      author: json['author']);
}
