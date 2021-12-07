import 'package:flutter/material.dart';

class Fullpage extends StatelessWidget { final id;
final ingredients;
final steps;
final title;
final image;
final Serving;
final subtitle;
final complex;
final step;
final time;

Fullpage(this.id, this.ingredients, this.steps,this.title, this.image,this.Serving,this.subtitle,this.complex,this.step,this.time);

  @override
  Widget build(BuildContext context) {
    final w=MediaQuery.of(context).size.width;
    final h=MediaQuery.of(context).size.height;
    return Container(
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
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              ),
              Text(
                subtitle,
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
                      blackPart(time,'Preparation Time'),
                      blackPart(Serving,'Serving'),
                      blackPart(1,complex),
                    ],
                  ),
                  CircleAvatar(
                    radius: w*0.2,
                    backgroundImage: AssetImage(image),
                    //    child: Image.asset('images/b1.png')
                  )
                ],
              ),
              SizedBox(height: 5.0,),
              Text('Ingredients',style: TextStyle(fontSize: 20.0,color: Colors.deepOrange,fontWeight: FontWeight.bold),),
              SizedBox(height: 10.0,),
              Container(
                  height: 280,
                  width: w,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Scrollbar(
                      child: ListView.builder(
                        itemBuilder: (ctx,index)=>Container(
                          padding: EdgeInsets.all(2.0),
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            color: Colors.amber,
                          ),
                          child: Text(
                            ingredients[index].toString(),
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        itemCount: ingredients.length,
                      ),
                    ),
                  )
              ),
              SizedBox(height: 10.0,),
              Text('Steps',style: TextStyle(fontSize: 20.0,color: Colors.deepOrange,fontWeight: FontWeight.bold),),
              SizedBox(height: 10.0,),
              Container(
                  height: 235.0,
                  width: w,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                    width: 400.0,
                    child: Scrollbar(
                      child: ListView.builder(
                        itemBuilder: (ctx,index)=> ListTile(
                          leading: CircleAvatar(
                            child: Text('${index+1}'),
                          ),
                          title: Text(
                            steps[index].toString(),
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        itemCount: steps.length,
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class blackPart extends StatelessWidget {
  final num;
  final text;
  blackPart(this.num,this.text);
  @override
  Widget build(BuildContext context) {
    final w=MediaQuery.of(context).size.width;
    final h=MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(right: 5.0,top: 5.0,bottom: 5.0),
      child: Container(
        width: w*0.5,
        height: h*0.08,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 20.0,),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(num.toString(),style: TextStyle(color: Colors.black),),
            ),
            SizedBox(width: 20.0,),
            Text(text,style: TextStyle(color: Colors.white,fontSize: 18.0),),
          ],
        ),
      ),
    );
  }
}
