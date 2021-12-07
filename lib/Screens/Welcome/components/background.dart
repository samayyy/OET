import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final  child;
  const Background({
    Key ,key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
          //  top: 0,
            //left: 0,
            child: Container(
              child: Image.asset(
                "images/LoginIn.jpg",
                width: size.width,
                fit: BoxFit.fill,
                height: size.height,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
