
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:video_player/video_player.dart';
import 'login.dart';
import 'signup.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/medzcue.png',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 50),
            Text(
              'MedzCue',
              style: TextStyle(
                fontSize: 45,
                color: Color(0xFF2ABAB9),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Your Health, Our Reminder',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFFFA7F9E),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Navigate to the new page when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF6495ED),
              ),
              child: Text('GET STARTED'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          // Blue background
          Container(
            color: Color(0xFF2ABAB9),
          ),
          // White content with carousel and buttons
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: screenHeight * 0.20,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20),bottom:Radius.circular(20) ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Carousel between two Column components
                  CarouselSlider(
                    
                    options: CarouselOptions(
                      height: 500.0,
                      autoPlay: true,
                      enlargeCenterPage: true,
                    ),
                    items: [
                      // Item 1
                      Column(
                         
                        children: [
                          Padding(
                                 padding: EdgeInsets.only(top: 100), // Add padding to the top
                                  child: Image.asset(
                                  'assets/gif1.gif',
                                  fit: BoxFit.cover,
                                  width: 300.0,
                                  height: 300.0,
                                 ),
                                ),
                          SizedBox(height: 20),
                         Expanded(child: 
                          Text('Cherish your health, nurture your well-being the key to a life well-lived.',style: TextStyle(
                fontSize: 20,
                color:Colors.grey,
                
                
              ),
                   textAlign: TextAlign.justify, 
                   ),)
                        ],
                      ),
                      // Item 2
                     
                        Column(
                         children: [
                              Padding(
                                 padding: EdgeInsets.only(top: 100), // Add padding to the top
                                  child: Image.asset(
                                  'assets/gif2.gif',
                                  fit: BoxFit.cover,
                                  width: 300.0,
                                  height: 300.0,
                                 ),
                                ),
                                    SizedBox(height: 20),
                                   Expanded(child: 
                          Text('Cherish your health, nurture your well-being the key to a life well-lived.',style: TextStyle(
                fontSize: 20,
                color:Colors.grey,
                
              ),
                   textAlign: TextAlign.justify, ),)
                                  ],
                          ),
                      
                      // Add more items as needed
                      Column(
                         children: [
                              Padding(
                                 padding: EdgeInsets.only(top: 100), // Add padding to the top
                                  child: Image.asset(
                                  'assets/gif3.gif',
                                  fit: BoxFit.cover,
                                  width: 300.0,
                                  height: 300.0,
                                 ),
                                ),
                                    SizedBox(height: 20),
                                   Expanded(child: Text('Get notified for well-being of your loved ones',style: TextStyle(
                fontSize: 20,
                color:Colors.grey,
                
              ),
                   textAlign: TextAlign.justify, ),)
                                  ],
                          ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Login and Signup buttons in a row at the bottom
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(5),
              child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    ElevatedButton(
      onPressed: () {
        // Add functionality for login button
        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
      },
      child: Text('Login'),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(150, 50), // Adjust the width and height as needed
      ),
    ),
    ElevatedButton(
      onPressed: () {
        // Add functionality for signup button
         Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signup()),
                );
      },
      child: Text('Sign up'),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(150, 50), // Adjust the width and height as needed
      ),
    ),
  ],
),

            ),
          ),
        ],
      ),
    );
  }
}