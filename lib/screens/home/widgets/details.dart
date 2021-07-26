import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tudo_gostoso/models/recipe.dart';
import 'package:tudo_gostoso/screens/home/widgets/my_detail.dart';
import 'package:tudo_gostoso/style.dart';

class Details extends StatelessWidget {
  final Recipe _recipeObj;
  
  Details(
    this._recipeObj,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: orangeTheme,
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 18,
      ),
      child: Column(
        children: [
          Text(
            _recipeObj.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyDetail(
                icon: FontAwesomeIcons.solidClock,
                title: "PREPARO",
                value: "${this._recipeObj.preparationTime} MIN",
              ),
              MyDetail(
                icon: FontAwesomeIcons.cheese,
                title: "RENDIMENTO",
                value: "${this._recipeObj.yield} MIN",
              ),
              MyDetail(
                icon: FontAwesomeIcons.solidHeart,
                title: "FAVORITOS",
                value: this._recipeObj.numberOfFavorites.toString(),
              ),
              MyDetail(
                icon: FontAwesomeIcons.solidCommentAlt,
                title: "COMENTÁRIOS",
                value: this._recipeObj.numberOfComments.toString(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}