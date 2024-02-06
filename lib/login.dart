import 'dart:developer';
import 'user.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/login_image.jpg', // Replace with your image asset
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email ID',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),  // <-- Add this closing parenthesis for the TextField
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add login logic for regular users
                print('Login as a User');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => User()),
                );
              },
              child: Text('Login as a User'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add login logic for guardians
                print('Login as a Guardian');
              },
              child: Text('Login as a Guardian'),
            ),
          ],
        ),
      ),
    );
  }
}
