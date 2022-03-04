// import 'package:flutter/material.dart';
// import 'consts.dart';

// class BottomContent extends StatelessWidget {
//   final String labelText;
//   int number;
//   final Icon iconRemove;
//   final Icon iconAdd;
//   VoidCallback reducedTap;
//   VoidCallback addedTap;

//   // ignore: use_key_in_widget_constructors
//    BottomContent(
//       {required this.labelText,
//      required this.number,
//       required this.iconAdd,
//       required this.iconRemove,
//       required this.reducedTap,
//       required this.addedTap});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Expanded(
//           child: Text(
//             labelText,
//             style: kLabelTextStyle,
//           ),
//         ),
//         Expanded(
//           flex: 2,
//           child: Text(
//             number.toString(),
//             style: kNumberTextStyle,
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 47,
//               child: FloatingActionButton(
//                 //padding: const EdgeInsets.all(8),
//                 onPressed: reducedTap,
//                 child: iconRemove,
//                 backgroundColor: kInactiveCardColor, //背景色
//               ),
//             ),
//             const SizedBox(
//               width: 5,
//             ),
//             SizedBox(
//               height: 47,
//               child: FloatingActionButton(
//                 onPressed:
//                   addedTap,
//                 
//                 child: iconAdd,
//                 backgroundColor: kInactiveCardColor, //背景色
//               ),
//             )
//           ],
//         )
//       ],
//     );
//   }
// }
