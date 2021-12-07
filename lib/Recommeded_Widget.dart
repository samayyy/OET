import 'package:flutter/material.dart';
import '/Data.dart';
import '/Recommended.dart';

class Recommeded_widget extends StatelessWidget {

  final view;
  Recommeded_widget(this.view);

  @override
  Widget build(BuildContext context) {

    final w=MediaQuery.of(context).size.width;
    final h=MediaQuery.of(context).size.height;
    if (view==1) {
      return Container(
      height: h*0.35,
      width: w*0.9,
         child: LayoutBuilder(builder: (context,constraints){
           return GridView(
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 1,
                mainAxisExtent: constraints.maxHeight*0.7,
                childAspectRatio: 3/2,
             ),
             scrollDirection: Axis.horizontal,
             shrinkWrap: true,
             children: Meal_Data.map((Card) => MealCards(id: Card.id, Mid: Card.Mid, title: Card.title, imageUrl: Card.imageUrl, Subtitle: Card.Subtitle,view: view,)).toList(),
           );
         }
         ),
    );
    } else {
      return Container(
        height: h*0.2,
        width: w,
        child: LayoutBuilder(builder: (context,constraints){
          return Container(
          //  height: h*0.2,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: constraints.maxHeight,
                mainAxisSpacing: 2.0,
                childAspectRatio: 3/2,
              ),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: Meal_Data.map((Card) => MealCards(id: Card.id, Mid: Card.Mid, title: Card.title, imageUrl: Card.imageUrl, Subtitle: Card.Subtitle,view: view,)).toList(),
            ),
          );
        }
        ),
      );
    }
  }
}
