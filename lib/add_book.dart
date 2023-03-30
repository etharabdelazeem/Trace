import 'package:TRACE/constants/my_widgets.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// convert user to book

class AddBook extends StatefulWidget {
  const AddBook({super.key});

  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  final controllerID = TextEditingController();
  final controllerName = TextEditingController();
  final controllerPw = TextEditingController();
  // final controllerDate = TextEditingController();
  //between the yellow brackets
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('add user'),
        backgroundColor: primaryColorLight,
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //         // final name = controllerID.text;
        //         // createUser(name: name);
        //       },
        //       icon: const Icon(Icons.send))
        // ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: <Widget>[
          TextField(
            decoration: decorations('ID'),
            controller: controllerID,
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: decorations('name'),
            controller: controllerName,
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: decorations('PW'),
            controller: controllerPw,
          ),
          const SizedBox(
            height: 20,
          ),
          // TextField(
          //   decoration: decorations('date'),
          //   controller: controllerDate,
          // ),
          CustomButtonIcon(
            onPressed: () {
              final user = User(
                userId: controllerID.text,
                userName: controllerName.text,
                password: controllerPw.text,
                // date: DateTime.parse(controllerDate.text)
              );
              createUser(user);
              Navigator.pop(context);
            },
            text: 'text',
            myIcon: Icons.abc,
          ),
        ],
      ),
    );
  }

  InputDecoration decorations(String label) => InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      );

  Future createUser(User user) async {
    final docUser = FirebaseFirestore.instance.collection('users').doc();
    user.userId = docUser.id;
    final json = user.toJson();

    await docUser.set(json);
  }
}

class User {
  String userId;
  final String? userName;
  final String password;
  // final DateTime date;

  // User(
  //     {required this.date,
  //     required this.password,
  //     required this.userName,
  //     required this.userId});
  //         'BD': date,
  User({required this.password, required this.userName, required this.userId});

  Map<String, dynamic> toJson() => {
        'userID': userId,
        'name': userName,
        'password': password,
      };
}

// // the thing between yellow brackets
//   List searchResult = [];
//   void search(String query) async {
//     final result = await FirebaseFirestore.instance
//         .collection('search books')
//         .where('id', isEqualTo: query)
//         .get();

//     setState(() {
//       searchResult = result.docs.map((e) => e.data()).toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios_new),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: const Center(
//             child: Text(
//           'Search',
//           style: TextStyle(color: primaryColordark),
//         )),
//         backgroundColor: Colors.white,
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: TextField(
//               decoration: const InputDecoration(
//                   border: OutlineInputBorder(), hintText: "Search"),
//               onChanged: (query) {
//                 search(query);
//               },
//             ),
//           ),
//           Expanded(
//               child: ListView.builder(
//             itemCount: searchResult.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(searchResult[index]['id_array']),
//                 subtitle: Text(searchResult[index]['id_num']),
//               );
//             },
//           ))
//         ],
//       ),
//     );
//   }