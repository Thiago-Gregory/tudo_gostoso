// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:tudo_gostoso/models/recipe.dart';
// import 'package:tudo_gostoso/style.dart';

// class Details extends StatelessWidget {
//   final Recipe _recipeObj;
  
//   Details(
//     this._recipeObj,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: orangeTheme,
//       padding: EdgeInsets.symmetric(
//         vertical: 10,
//         horizontal: 18,
//       ),
//       child: Column(
//         children: [
//           Text(
//             _recipeObj.name,
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 34,
//               //fontWeight: FontWeight.bold,
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 children: [
//                   FaIcon(
//                     FontAwesomeIcons.solidClock,
//                     color: Colors.white,
//                   ),
//                   Padding(
//                     padding: const
//                     EdgeInsets.symmetric(
//                       vertical: 5,
//                     ),
//                     child: Text(
//                       "PREPARO",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const
//                     EdgeInsets.symmetric(
//                       vertical: 5,
//                     ),
//                     child: Text(
//                       "40 min",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),

//               Column(
//                 children: [
//                   FaIcon(
//                     FontAwesomeIcons.cheese,
//                     color: Colors.white,
//                   ),
//                   Padding(
//                     padding: const
//                     EdgeInsets.symmetric(
//                       vertical: 5,
//                     ),
//                     child: Text(
//                       "RENDIMENTO",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const
//                     EdgeInsets.symmetric(
//                       vertical: 5,
//                     ),
//                     child: Text(
//                       "12 Porções",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                       ),
//                     ),
//                   )
//                 ],
//               ),

//               Column(
//                 children: [
//                   FaIcon(
//                     FontAwesomeIcons.solidHeart,
//                     color: Colors.white,
//                   ),
//                   Padding(
//                     padding: const
//                     EdgeInsets.symmetric(
//                       vertical: 5,
//                     ),
//                     child: Text(
//                       "FAVORITOS",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const
//                     EdgeInsets.symmetric(
//                       vertical: 5,
//                     ),
//                     child: Text(
//                       "340.694",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                       ),
//                     ),
//                   )
//                 ],
//               ),

//               Column(
//                 children: [
//                   FaIcon(FontAwesomeIcons.solidCommentAlt,
//                     color: Colors.white,
//                   ),
//                   Padding(
//                     padding: const
//                      EdgeInsets.symmetric(
//                        vertical: 5,
//                      ),
//                     child: Text(
//                       "COMENTÁRIOS",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const
//                     EdgeInsets.symmetric(
//                       vertical: 5,
//                     ),
//                     child: Text(
//                       "3.817",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }