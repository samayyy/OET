import 'package:flutter/material.dart';
import '/MorningScreen.dart';
import '/Data.dart';
import '/Recommended.dart';

class Morning extends StatelessWidget {
   Morning({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final num=ModalRoute.of(context)!.settings.arguments as int;

      final Morning_data = Meal_Data.where((element) => element.id.contains('b'));

      final Lunch_data = Meal_Data.where((element) => element.id.contains('l'));

      final Dinner_data = Meal_Data.where((element) => element.id.contains('d'));

    final size=MediaQuery.of(context).size;
     if(num==1){
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: ()=>Navigator.of(context).pushReplacementNamed('/Home'), icon: Icon(Icons.arrow_back_ios)),
                      SizedBox(width: 15.0,),
                      Text(
                          'Breakfast',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Container(
                        //color: Colors.red,
                         height:size.height,
                         width: size.width,
                        child: LayoutBuilder(builder: (context, constraints){
                          return GridView(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: constraints.maxHeight*0.4,
                          ),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: Morning_data.map((Card) => DividedScreen(id: Card.id, Mid: Card.Mid, title: Card.title, imageUrl: Card.imageUrl, Subtitle: Card.Subtitle, )).toList(),
                        );
                        }
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }else
    if(num==2)
    {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: ()=>Navigator.of(context).pushReplacementNamed('/Home'), icon: Icon(Icons.arrow_back_ios)),
                      SizedBox(width: 15.0,),
                      Text(
                        'Lunch',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Container(
                        //color: Colors.red,
                        height:size.height,
                        width: size.width,
                        child: LayoutBuilder(builder: (context, constraints){
                          return GridView(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: constraints.maxHeight*0.4,
                            ),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            children: Lunch_data.map((Card) => DividedScreen(id: Card.id, Mid: Card.Mid, title: Card.title, imageUrl: Card.imageUrl, Subtitle: Card.Subtitle, )).toList(),
                          );
                        }
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }else
    {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: ()=>Navigator.of(context).pushReplacementNamed('/Home'), icon: Icon(Icons.arrow_back_ios)),
                      SizedBox(width: 15.0,),
                      Text(
                        'Breakfast',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Container(
                        //color: Colors.red,
                        height:size.height,
                        width: size.width,
                        child: LayoutBuilder(builder: (context, constraints){
                          return GridView(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: constraints.maxHeight*0.4,
                            ),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            children: Dinner_data.map((Card) => DividedScreen(id: Card.id, Mid: Card.Mid, title: Card.title, imageUrl: Card.imageUrl, Subtitle: Card.Subtitle, )).toList(),
                          );
                        }
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
