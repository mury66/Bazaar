// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// class MyCustomBottomNavigationBar extends StatefulWidget {
//   @override
//   MyCustomBottomNavigationBarState createState() =>
//       MyCustomBottomNavigationBarState();
// }
//
// class MyCustomBottomNavigationBarState
//     extends State<MyCustomBottomNavigationBar> {
//   var currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Color(0xffF15F60),
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           brightness: Brightness.dark,
//           elevation: 0,
//           centerTitle: true,
//           title: Text('APP NAME')),
//       bottomNavigationBar: Container(
// // color: Colors.deepPurpleAccent,
//         height: size.width * .155,
//         child: ListView.builder(
//           itemCount: 4,
//           scrollDirection: Axis.horizontal,
//           padding: EdgeInsets.symmetric(horizontal: size.width * .024),
//           itemBuilder: (context, index) => InkWell(
//             onTap: () {
//               setState(() {
//                 currentIndex = index;
// // print(index);
//               });
//             },
//             splashColor: Colors.transparent,
//             highlightColor: Colors.transparent,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 SizedBox(height: size.width * .014),
//                 Icon(listOfIcons[index],
//                     size: size.width * .076, color: Colors.white),
//                 AnimatedContainer(
//                   duration: Duration(milliseconds: 1500),
//                   curve: Curves.fastLinearToSlowEaseIn,
//                   margin: EdgeInsets.only(
//                     top: index == currentIndex ? 0 : size.width * .029,
//                     right: size.width * .0422,
//                     left: size.width * .0422,
//                   ),
//                   width: size.width * .153,
//                   height: index == currentIndex ? size.width * .014 : 0,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.vertical(
//                       top: Radius.circular(20),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   List<IconData> listOfIcons = [
//     Icons.home_rounded,
//     Icons.favorite_rounded,
//     Icons.settings_rounded,
//     Icons.person_rounded,
//   ];
// }
