import 'package:flutter/material.dart';

class MealCards extends StatelessWidget {

  final  String id;
  final String  Mid;
  final String  title;
  final String Subtitle;
  final String imageUrl;
  final  view;
  final Preparation_time;
  final Servings;
  final ingredients;
  final steps;
  final complexity;

  MealCards(
      {
        this.view,
        this.complexity,
        this.steps,
        this.Servings,
        this.ingredients,
        this.Preparation_time,
           required this.id,
           required this.Mid,
           required this.title,
           required this.imageUrl,
           required this.Subtitle,
  });

  void info(BuildContext ctx){
    Navigator.of(ctx).pushNamed(
        '/Detail',
      arguments: {
          'title': title,
          'id': Mid,
      }
    );
  }
  @override
  Widget build(BuildContext context) {

    final w=MediaQuery.of(context).size.width;
    final h=MediaQuery.of(context).size.height;
    if(view==1){
      return InkWell(
        splashColor: Colors.orangeAccent,
        onTap: ()=> info(context),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: CircleAvatar(
                    radius: h*0.08,
                    backgroundImage: AssetImage(imageUrl),
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 6.0),
                Text(
                  Subtitle,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    else{
      return InkWell(
        onTap: ()=>info(context),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(
                    radius: w*0.08,
                    backgroundImage: AssetImage(imageUrl),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 1.0),
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Text(
                      Subtitle,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }
  }
}
