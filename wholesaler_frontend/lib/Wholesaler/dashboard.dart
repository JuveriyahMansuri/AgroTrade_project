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
  runApp(MaterialApp(home: Dashboard(),));
}

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {



  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "EAgroTrade",
              style: TextStyle(color: Colors.lightGreen,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Image.asset(
              'assets/img.png',
              height: 50,
              width: 40,
            ),
            SizedBox(width: 8),
          ],
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Tony!!",
                    style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
                  ),
                  IconButton(
                    icon: Icon(Icons.circle_notifications, size: 40,
                        color: Colors.lightGreen),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => notification()),
                      );
                    },
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
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
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Products",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.add_box_sharp, color: Colors.orange[300],
                          size: 30,),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => MyProduct()),
                          );
                        },
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 30, right: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow[200],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/potato.jpeg',
                                height: 100,
                                width: 150,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Potato",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Fresh & organic",
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 30, right: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red[100],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/tomato.jpeg',
                                height: 100,
                                width: 170,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Tomato",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Fresh & organic",
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 30, right: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.purple[50],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/onion.jpeg',
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Onion",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Fresh & organic",
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Auction",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.add_box_sharp, color: Colors.orange[300],
                          size: 30,),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => MyAuction(),
                          ));
                        },
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 30),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow[200],
                          ),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Image.asset(
                                    'assets/potato.jpeg',
                                    height: 100,
                                    width: 180,
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "Potato",
                                    style: TextStyle(fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "Qty:-25kgs",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "₹400",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 300,
                              ),
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.green,
                                    side: BorderSide(color: Colors.green),
                                  ),
                                  child: Text(
                                    "Active",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                // Align text and icon at the top of the container
                                right: 0,
                                // Align text and icon to the left side of the container
                                child: Row(
                                  children: [
                                    Icon(
                                        Icons.timer, color: Colors.orange[300]),
                                    // Timer icon
                                    SizedBox(width: 4),
                                    // Provide some spacing between the icon and text
                                    Text(
                                      "01:23min Remaining", // Your desired text
                                      style: TextStyle(
                                        color: Colors.black,

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 10, top: 30),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red[100],
                          ),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Image.asset(
                                    'assets/tomato.jpeg',
                                    height: 100,
                                    width: 180,
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "Tomato",
                                    style: TextStyle(fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "Qty:-25kgs",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "₹400",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 300,
                              ),
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.green,
                                    side: BorderSide(color: Colors.green),
                                  ),
                                  child: Text(
                                    "Start",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                // Align text and icon at the top of the container
                                right: 0,
                                // Align text and icon to the left side of the container
                                child: Row(
                                  children: [
                                    Icon(
                                        Icons.timer, color: Colors.orange[300]),
                                    // Timer icon
                                    SizedBox(width: 4),
                                    // Provide some spacing between the icon and text
                                    Text(
                                      "Starts in 1hrs", // Your desired text
                                      style: TextStyle(
                                        color: Colors.black,

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 10, top: 30),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.purple[50],
                          ),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Image.asset(
                                    'assets/onion.jpeg',
                                    height: 100,
                                    width: 150,
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "Onion",
                                    style: TextStyle(fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "Qty:-25kgs",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "₹400",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 300,
                              ),
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.green,
                                    side: BorderSide(color: Colors.green),
                                  ),
                                  child: Text(
                                    "Start",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                // Align text and icon at the top of the container
                                right: 0,
                                // Align text and icon to the left side of the container
                                child: Row(
                                  children: [
                                    Icon(
                                        Icons.timer, color: Colors.orange[300]),
                                    // Timer icon
                                    SizedBox(width: 4),
                                    // Provide some spacing between the icon and text
                                    Text(
                                      "Starts in 2hrs", // Your desired text
                                      style: TextStyle(
                                        color: Colors.black,

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
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
