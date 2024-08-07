
import 'package:flutter/material.dart';
import 'userdetailsscreen.dart'; // Ensure this is correctly imported
import 'user.dart'; // Import the User class

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [
    User(profileImage: 'assets/images/JohnDoe.png', name: 'John Doe', mobileNumber: '1234567890', dateOfBirth: '01/01/2000', address: '123 Street'),
    User(profileImage: 'assets/images/monika.png', name: 'Monika Roy', mobileNumber: '1234567891', dateOfBirth: '01/01/2001', address: '1234 Street'),
    User(profileImage: 'assets/images/sonika.png', name: 'Sonika Tata', mobileNumber: '1234567892', dateOfBirth: '01/01/2002', address: '1235 Street'),
    User(profileImage: 'assets/images/Ankita.png', name: 'Ankita Zha', mobileNumber: '1234567893', dateOfBirth: '01/01/2003', address: '1236 Street'),
    User(profileImage: 'assets/images/Nick.png', name: 'Nick Taii', mobileNumber: '1234567894', dateOfBirth: '01/01/2004', address: '1237 Street'),
    User(profileImage: 'assets/images/Rehana.png', name: 'Rehana Disoza', mobileNumber: '1234567895', dateOfBirth: '01/01/2005', address: '1238 Street'),
    User(profileImage: 'assets/images/Mohan.png', name: 'Mohn Doet', mobileNumber: '1234567896', dateOfBirth: '01/01/2006', address: '1239 Street'),
    User(profileImage: 'assets/images/Katin.png', name: 'Katin Poet', mobileNumber: '1234567897', dateOfBirth: '01/01/2007', address: '1231 Street'),
    User(profileImage: 'assets/images/img.png', name: 'Pitter Pinak', mobileNumber: '1234567898', dateOfBirth: '01/01/2008', address: '1232 Street'),
    User(profileImage: 'assets/images/Tiya.png', name: 'Tiya Tandan', mobileNumber: '1234567899', dateOfBirth: '01/01/2009', address: '1233 Street'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4C8D91),
        title: const Text('User Management',style: TextStyle(color: Colors.white),),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double maxWidth = constraints.maxWidth;

          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: maxWidth < 600 ? 1 : 2, // Single column for small screens, two columns for larger screens
              childAspectRatio: 3, // Adjust the aspect ratio as needed
            ),
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return Card(
                color: Color(0xffD3EFEC),
                margin: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 38,
                      backgroundImage: AssetImage(user.profileImage)),
                  title: Text(user.name,style: TextStyle(fontSize: 20),),
                  subtitle: Text(user.mobileNumber,style: TextStyle(fontSize: 18),),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetailsScreen(user: user),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
