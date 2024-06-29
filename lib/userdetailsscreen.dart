// import 'package:flutter/material.dart';
// import 'user.dart';
//
// class UserDetailsScreen extends StatelessWidget {
//   final User user;
//
//   const UserDetailsScreen({super.key, required this.user});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(user.name),
//       ),
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           bool isLargeScreen = constraints.maxWidth > 600;
//           return Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Card(
//               child: isLargeScreen
//                   ? Row(
//                 children: [
//                   Expanded(
//                     flex: 1,
//                     child: Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: CircleAvatar(
//                         backgroundImage: AssetImage(user.profileImage),
//                         radius: 100,
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 2,
//                     child: Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('Name: ${user.name}', style: TextStyle(fontSize: 24)),
//                           SizedBox(height: 16),
//                           Text('Mobile: ${user.mobileNumber}', style: TextStyle(fontSize: 24)),
//                           SizedBox(height: 16),
//                           Text('Date of Birth: ${user.dateOfBirth}', style: TextStyle(fontSize: 24)),
//                           SizedBox(height: 16),
//                           Text('Address: ${user.address}', style: TextStyle(fontSize: 24)),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//                   : Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: CircleAvatar(
//                       backgroundImage: AssetImage(user.profileImage),
//                       radius: 50,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('Name: ${user.name}', style: TextStyle(fontSize: 20)),
//                         SizedBox(height: 16),
//                         Text('Mobile: ${user.mobileNumber}', style: TextStyle(fontSize: 20)),
//                         SizedBox(height: 16),
//                         Text('Date of Birth: ${user.dateOfBirth}', style: TextStyle(fontSize: 20)),
//                         SizedBox(height: 16),
//                         Text('Address: ${user.address}', style: TextStyle(fontSize: 20)),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
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
        title: Text(user.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(user.profileImage),
            ),
            const SizedBox(height: 16),
            Text('Name: ${user.name}', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Mobile: ${user.mobileNumber}', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Date of Birth: ${user.dateOfBirth}', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Address: ${user.address}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

