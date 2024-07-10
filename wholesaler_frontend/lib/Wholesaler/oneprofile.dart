import 'package:flutter/material.dart';
import 'package:wholesaler/Wholesaler/addproduct.dart';
import 'package:wholesaler/Wholesaler/authentication_one.dart';
import 'package:wholesaler/Wholesaler/authentication_two.dart';
import 'package:wholesaler/Wholesaler/authentication_three.dart';
import 'package:wholesaler/Wholesaler/dashboard.dart';
import 'package:wholesaler/Wholesaler/myproduct.dart';
import 'package:wholesaler/Wholesaler/notification.dart';
import 'package:wholesaler/Wholesaler/addauction.dart';
import 'package:wholesaler/Wholesaler/auctioncomplete.dart';
import 'package:wholesaler/Wholesaler/bids.dart';
import 'package:wholesaler/Wholesaler/myauction.dart';
import 'package:wholesaler/Wholesaler/notifyretailer.dart';
import 'package:wholesaler/Wholesaler/order.dart';
import 'package:wholesaler/Wholesaler/orderstatus.dart';
import 'package:wholesaler/Wholesaler/payment.dart';
import 'package:wholesaler/Wholesaler/documents.dart';
import 'package:wholesaler/Wholesaler/imagepicker.dart';
import 'package:wholesaler/Wholesaler/namegeneralinfo.dart';
import 'package:wholesaler/Wholesaler/oneprofile.dart';
import 'package:wholesaler/Wholesaler/profileinfo.dart';
import 'package:wholesaler/Wholesaler/mybizz.dart';
import 'package:wholesaler/Wholesaler/weeklyoff.dart';

void main() {
  runApp(MaterialApp(home: ProfileScreen()));
}

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Add a back arrow icon
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            ); // Navigate back when the arrow is pressed
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/1.png'), // Replace with your image
            ),
            SizedBox(height: 20),
            Text(
              'Darrell Steward', // Replace with seller's name
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 20),
            ProfileOption(
              icon: Icons.person,
              label: 'Profile',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileInfoScreen(),
                  ),
                );
              },
            ),
            ProfileOption(
              icon: Icons.business,
              label: 'My Bizz',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyBizzScreen(),
                  ),
                );
              },
            ),
            ProfileOption(
              icon: Icons.business,
              label: 'Orders',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Orders(),
                  ),
                );
              },
            ),
            ProfileOption(
              icon: Icons.payment,
              label: 'Payment',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Payment(),
                  ),
                );
              },
            ),
            ProfileOption(
              icon: Icons.calendar_today,
              label: 'Weekly Off',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WeeklyOffScreen(),
                  ),
                );
              },
            ),
            ProfileOption(
              icon: Icons.description,
              label: 'Terms and Conditions',
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => NextPage(),
                //   ),
                // );
              },
            ),
            ProfileOption(
              icon: Icons.logout,
              label: 'Logout',
              onPressed: () {


              },
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: '',
          ),
        ],
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });

          switch (index) {
            case 0:
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => Dashboard(),
              ));
              break;
            case 1:
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => MyAuction(),
              ));
              break;
            case 2:
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => MyProduct(),
              ));
              break;
            case 3:
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ));
              break;
          }
        },
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const ProfileOption({required this.icon, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.lightGreen),
      title: Text(
        label,
        style: TextStyle(
          fontSize: 18, // Set the font size to 18
          fontWeight: FontWeight.bold, // Set the font weight to bold
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: onPressed,
    );
  }
}

