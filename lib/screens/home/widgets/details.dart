import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tudo_gostoso/models/recipe.dart';
import 'package:tudo_gostoso/style.dart';

class Details extends StatelessWidget {
  final Recipe _recipeObj;
  
  Details(
    this._recipeObj,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
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
                    createInfoColumn(FontAwesomeIcons.solidClock, "PREPARO", "${this._recipeObj.preparationTime} MIN"),
                    createInfoColumn(FontAwesomeIcons.cheese, "RENDIMENTO", "${this._recipeObj.yield} PORÇÕES"),
                    createInfoColumn(FontAwesomeIcons.solidHeart, "FAVORITOS", this._recipeObj.numberOfFavorites.toString()),
                    createInfoColumn(FontAwesomeIcons.solidCommentAlt, "COMENTÁRIOS", this._recipeObj.numberOfComments.toString()),
                  ],
                ),
              ],
            ),
          ),

          Column(
            children: [
              createListTitle(FontAwesomeIcons.bookOpen, "INGREDIENTES"),
              createListContent("Massa", this._recipeObj.ingredientsPasta),
              createListContent("Cobertura", this._recipeObj.ingredientsPasta),
            ],
          ),

          Column(
            children: [
              createListTitle(FontAwesomeIcons.utensilSpoon, "MODO DE PREPARO"),
              createListContent("Massa", this._recipeObj.preparationModePasta),
              createListContent("Cobertura", this._recipeObj.preparationModeTopping),
            ],
          ),
        ],
      ),
    );
  }
  
  Widget createInfoColumn(IconData icon, String title, String value) {
    return Column(
      children: [
        Padding(
          padding: const
          EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: FaIcon(
            icon,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const
          EdgeInsets.symmetric(
            vertical: 5,
          ),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const
          EdgeInsets.only(
            bottom: 5,
          ),
          child: Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }

  Widget createListTitle(IconData icon, String title) {
    return Padding(
      padding: const
      EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            color: orangeTheme,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
            ),
            child: Text(
              title,
              style: TextStyle(
                color: orangeTheme,
                fontSize: 22,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget createListContent(String subTitle, List<String> list) {
    return Padding(
      padding: const
      EdgeInsets.only(
        bottom: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              subTitle,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
            list.length, (index) =>
              Padding(
                padding: const
                EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 20,
                ),
                child: Text(
                  list.elementAt(index),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}