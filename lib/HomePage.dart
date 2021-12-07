import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyDrawer.dart';
import 'Recommeded_Widget.dart';
    
class homepage extends StatefulWidget {
   homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
   int _index=0;

  @override
  Widget build(BuildContext context) {
    final w=MediaQuery.of(context).size.width;
    final h=MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: MyDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Hello Sanket',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 20.0,
              ),
            ),
            Text(
              'What would you like to cook today?',
              style: TextStyle(
                fontSize: 10.0,
              ),
            ),
          ],
        ),
      ),
      body: Container(
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
        child: Container(
          width: w,
          padding: const EdgeInsets.only(left: 25.0,top: 70.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: w*0.9,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search here',
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Text(
                    'Recommended recipe',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 15.0,),
                Recommeded_widget(1),
                SizedBox(height: 15.0,),
                Text(
                  'Popular Foods',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 5.0,),
                Recommeded_widget(2),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.amber,
        currentIndex: _index,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.home), onPressed: ()=>Navigator.of(context).pushReplacementNamed('/Home'),),
              title: Text('Home')
          ),
          BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.settings), onPressed: ()=>Navigator.of(context).pushReplacementNamed('/Setting'),),
              title: Text("Favourites")
          )
        ],
        onTap: (index){
          setState(() {
            _index=index;
          });
        },
      ),
    );
  }
}
