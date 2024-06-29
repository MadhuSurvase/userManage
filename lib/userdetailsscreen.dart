
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'user.dart'; // Import the User class

class UserDetailsScreen extends StatelessWidget {
  final User user;

  const UserDetailsScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4C8D91),
        title: Text(user.name),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(

          height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16.0)),
              border: Border.all(width: 1,color: Color(0xffD3EFEC)),color: Color(0xffD3EFEC) ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(user.profileImage),
              ),
              const SizedBox(height: 16),
              Text('Name: ${user.name}', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 8),
              Text('Mobile: ${user.mobileNumber}', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 8),
              Text('Date of Birth: ${user.dateOfBirth}', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 8),
              Text('Address: ${user.address}', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}

