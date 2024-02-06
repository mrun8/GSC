import 'package:flutter/material.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Set the background color of the screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Section
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.blue,
              child: Column(
                // SizedBox(height:50),
                children: [
                  SizedBox(height:70),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white, // Set profile photo background color
                    // Add your profile photo here (e.g., backgroundImage: AssetImage('assets/profile_photo.jpg'),)
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Hello Mrun',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            // Padding between sections
            SizedBox(height:0),
            // White Container with Dropdown
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.white, // Set the container background color
                child: Column(
                  children: [
                    Row(
                      children: [
                        // Your existing content here
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            items: [
                              DropdownMenuItem<String>(
                                value: 'Option 1',
                                child: Text('Option 1'),
                              ),
                              DropdownMenuItem<String>(
                                value: 'Option 2',
                                child: Text('Option 2'),
                              ),
                              DropdownMenuItem<String>(
                                value: 'Option 3',
                                child: Text('Option 3'),
                              ),
                            ],
                            onChanged: (value) {
                              // Handle dropdown selection
                              print('Selected: $value');
                            },
                            hint: Container(), // Empty container for no hintText
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.arrow_drop_down),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


