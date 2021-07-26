import 'package:flutter/material.dart';

 class MyList extends StatelessWidget {
   final String title;
   final List<String> listOfElements;

   MyList({
     required this.title,
     required this.listOfElements,
   });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const
      EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //children: buildList(listOfElements),
              children: List.generate(
              listOfElements.length, (index) =>
                Padding(
                  padding: const
                  EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    listOfElements.elementAt(index),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //Another way to create Widgets from lists
  // List<Widget> buildList(List<String> itens) {
  //   List<Widget> listOfWidgets = [];

  //   itens.forEach((element) {
  //     listOfWidgets.add(
  //       Padding(
  //         padding: const
  //         EdgeInsets.symmetric(
  //           vertical: 5,
  //           horizontal: 20,
  //         ),
  //         child: Text(
  //           element
  //         ),
  //       ),
  //     );
  //   });

  //   return listOfWidgets;
  // }
}