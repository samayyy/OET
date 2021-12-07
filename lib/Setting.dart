import 'package:flutter/material.dart';
import 'info_card.dart';

const email = "mahi.pt@somaiya.edu";
const phone = "7506124568";
const location = "Mumbai, India";

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int _index=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.blueGrey[800],
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 0),
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
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                ),
                Text(
                  "Mahi Patil",
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Pacifico",
                  ),
                ),
                Text(
                  "Welcome to Foddy",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey[200],
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Source Sans Pro"),
                ),
                SizedBox(
                  height: 20,
                  width: 200,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),

                // we will be creating a new widget name info carrd

                InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),
                InfoCard(
                    text: location,
                    icon: Icons.location_city,
                    onPressed: () async {}),
                InfoCard(text: email, icon: Icons.email, onPressed: () async {}),
                InfoCard(text: 'LogOut', icon: Icons.logout, onPressed: ()=>Navigator.of(context).pushReplacementNamed('/')),
              ],
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