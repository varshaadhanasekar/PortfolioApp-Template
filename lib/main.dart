import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// All the required libraries/packages for the project is imported

void main() {
  // This the main function, only from here the code will be executed
  runApp(MyApp()); // It is said to run the class MyApp
}

class MyApp extends StatelessWidget {
  // StatelessWidget --> Helps the hot reload and restart to work
  // Can use stless as a shortcut for obtaining the StatelessWidget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp is the one which has all the required materials for the app
      home: Scaffold(
        // It is a collection of various material designs available in flutter
        backgroundColor: Colors.pinkAccent,
        // Helps to have some color in the background
        body: SafeArea(
          // Mobile screens are different for different phones, So safe area helps to place the content only in the visible part
          child: Column(
            // It has many children // It arranges its children in vertical order
            mainAxisAlignment: MainAxisAlignment.center,
            // Arranges all the contents of the column to the centre
            children: <Widget>[
              // An array of container widgets
              CircleAvatar(
                // It gives some space for placing your image in a circle shape
                maxRadius: 50.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                    'images/yourimage.jpg'), // It helps to use the image that was uploaded to the project
              ),
              Text(
                'Your Name', // ENTER
                // It can have only have one thing inside it, eg., text but not text and image
                style: TextStyle(
                  // Helps to style the text
                  fontFamily: 'Pacifico',
                  // Helps to use the fonts families that was uploaded in the project
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'Your Role', //ENTER
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 18.0,
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                // Leaves space between the containers
                height: 10.0,
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  // Helps to draw lines between the containers
                  color: Colors.white,
                  thickness: 1.0,
                ),
              ),
              Card(
                // PHONE CARD USING LIST TILE
                // It is an inbuilt widget which helps to draw cards with round edges and shadows
                margin: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 30.0,
                  // Helps add some margin to the content
                ),
                child: ListTile(
                  // It helps to add images and text inside the card
                  leading: Icon(
                    Icons.phone,
                    color: Colors.pink,
                  ),
                  title: Text(
                    '+44 1234 5678', // ENTER
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'SourcesSansPro',
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
              Card(
                // EMAIL CARD USING LIST TILE
                margin: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 30.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.pink,
                  ),
                  title: Text(
                    'youremail@example.com', // ENTER
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'SourcesSansPro',
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'LinkedIn, GitHub, Twitter', // ENTER
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Colors.white,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                // MEDIA CARD USING LIST TILE
                margin: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 30.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.forum,
                    color: Colors.pink,
                  ),
                  title: Text(
                    'Your Social Account Ids', //ENTER
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'SourcesSansPro',
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
