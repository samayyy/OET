import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final w=MediaQuery.of(context).size.width;
    final h=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
         Container(
            width: w,
            height: h*0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'images/SignIn.jpg'
                  ),
                  fit: BoxFit.cover
              ),
            ),
          ),
          Container(
              width: w,
              height: h*0.2,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                  children:[
                    Text(
                      'Login to your account',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          )
                      ),
                    ),
                  ]
              )
          )
        ],
      ),
    );
  }
}
