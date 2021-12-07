import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Data.dart';
import 'FullDetails.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Arg = ModalRoute.of(context)!.settings.arguments as Map<String,String>;
    final Id=Arg['id'];
    final Title=Arg['title'];
    print(Id);
    final selected=Meal_Data.where((element) => element.Mid.contains(Id.toString()));
    final w=MediaQuery.of(context).size.width;
    final h=MediaQuery.of(context).size.height;
    return Scaffold(extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.favorite_border,color: Colors.black,),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: selected.map((data) {
            return  Fullpage(data.Mid,data.ingredients,data.steps,data.title,data.imageUrl,data.Servings,data.Subtitle,data.complexity,data.steps,data.Preparation_time);
          }
          ).toList(),
        ),
      ),
      /*Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orangeAccent,
              Colors.amberAccent,
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 60.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Vada Pav',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Pav,Vada,Chutney and Green Chilli',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black54,
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 10.0,),
                        blackPart(),
                        blackPart(),
                        blackPart(),
                      ],
                    ),
                    CircleAvatar(
                      radius: w*0.2,
                      backgroundImage: AssetImage('images/b1.png'),
                    //    child: Image.asset('images/b1.png')
                    )
                  ],
                ),
                SizedBox(height: 5.0,),
                Text('Ingredients',style: TextStyle(fontSize: 20.0,color: Colors.deepOrange,fontWeight: FontWeight.bold),),

              ],
            ),
          ),
        ),
      ),*/
    );
  }
}

