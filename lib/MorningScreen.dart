import 'package:flutter/material.dart';

class DividedScreen extends StatelessWidget {

  final String id;
  final String Mid;
  final String title;
  final String imageUrl;
  final String Subtitle;

   DividedScreen({
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
    final size=MediaQuery.of(context).size;
    return InkWell(
      splashColor: Colors.orangeAccent,
      onTap: ()=> info(context),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: CircleAvatar(
                  radius: size.height*0.08,
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
}
