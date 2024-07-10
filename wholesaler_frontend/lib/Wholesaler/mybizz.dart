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

class MyBizzScreen extends StatefulWidget {

  @override
  State<MyBizzScreen> createState() => _MyBizzScreenState();
}

class _MyBizzScreenState extends State<MyBizzScreen> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('MyBizz'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Add a back arrow icon
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );// Navigate back when the arrow is pressed
          },
        ),
      ),

      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.lightGreen,
            ),
            title: Text('Name',style: TextStyle(fontWeight: FontWeight.bold ),),
            subtitle: Text('General Info'),
            trailing: Icon(
              Icons.arrow_forward_ios,

            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NameInfo()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.description,
              color: Colors.lightGreen,
            ),
            title: Text('Document Name',style: TextStyle(fontWeight: FontWeight.bold )),
            subtitle: Text('Document Info'),
            trailing: Icon(
              Icons.arrow_forward_ios,

            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Document()),
              );
            },
          ),
          // Add more ListTiles for additional items
        ],
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


