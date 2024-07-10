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
  runApp(MaterialApp(home: MyProduct(),));
}
class MyProduct extends StatefulWidget {
  @override
  _MyProductState createState() => _MyProductState();
}

class _MyProductState extends State<MyProduct>  {
  PageController _pageController = PageController(initialPage: 0);

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Products",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_sharp),
            color: Colors.orange[300],
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AddProduct()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  height: 120, // Increased height to accommodate the additional text
                  decoration: BoxDecoration(
                    color: Colors.yellow[100], // Background color of the container
                    borderRadius: BorderRadius.circular(10), // Border radius of the container
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/potato.jpeg', // Replace with your actual image asset
                          width: 100, // Adjust the size as needed
                          height: 100, // Adjust the size as needed
                        ),
                      ),
                      Expanded( // Expanded widget is used to ensure the texts take up the remaining space
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Potato', // Your first text
                                style: TextStyle(
                                  fontSize: 20, // Adjust the font size as needed
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold, // Adjust the text color as needed
                                ),
                                overflow: TextOverflow.ellipsis, // Prevents the text from overflowing
                              ),
                              Text(
                                'Fresh and Organic', // Your second text goes here
                                style: TextStyle(
                                  fontSize: 14, // Adjust the font size as needed
                                  color: Colors.grey, // Adjust the text color as needed
                                ),
                                overflow: TextOverflow.ellipsis, // Prevents the text from overflowing
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: Icon(Icons.delete, color: Colors.lightGreen), // Icon color set to red
                          onPressed: () {
                            // Handle your delete functionality
                            print('Delete clicked');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle your auction functionality
                      print('Auction clicked');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Button background color
                      onPrimary: Colors.lightGreen, // Text color
                      shape: RoundedRectangleBorder( // Button shape
                        borderRadius: BorderRadius.circular(20), // Button border radius
                        side: BorderSide(color: Colors.lightGreen), // Button border color
                      ),
                    ),
                    child: Text('Auction'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  height: 120, // Increased height to accommodate the additional text
                  decoration: BoxDecoration(
                    color: Colors.pink[50], // Background color of the container
                    borderRadius: BorderRadius.circular(10), // Border radius of the container
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/tomato.jpeg', // Replace with your actual image asset
                          width: 100, // Adjust the size as needed
                          height: 100, // Adjust the size as needed
                        ),
                      ),
                      Expanded( // Expanded widget is used to ensure the texts take up the remaining space
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tomato', // Your first text
                                style: TextStyle(
                                  fontSize: 20, // Adjust the font size as needed
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold, // Adjust the text color as needed
                                ),
                                overflow: TextOverflow.ellipsis, // Prevents the text from overflowing
                              ),
                              Text(
                                'Fresh and Organic', // Your second text goes here
                                style: TextStyle(
                                  fontSize: 14, // Adjust the font size as needed
                                  color: Colors.grey, // Adjust the text color as needed
                                ),
                                overflow: TextOverflow.ellipsis, // Prevents the text from overflowing
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: Icon(Icons.delete, color: Colors.lightGreen), // Icon color set to red
                          onPressed: () {
                            // Handle your delete functionality
                            print('Delete clicked');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle your auction functionality
                      print('Auction clicked');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Button background color
                      onPrimary: Colors.lightGreen, // Text color
                      shape: RoundedRectangleBorder( // Button shape
                        borderRadius: BorderRadius.circular(20), // Button border radius
                        side: BorderSide(color: Colors.lightGreen), // Button border color
                      ),
                    ),
                    child: Text('Auction'),
                  ),
                ),
              ],
            )
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

