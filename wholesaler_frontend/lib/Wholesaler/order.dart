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

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Orders",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    //borderSide: BorderSide(color: Colors.grey), // Outline color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                        color: Colors.lightGreen), // Focused outline color
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // now people column would start
            // below container is single person
            Container(
              height: 80,
              width: 350,
              decoration: BoxDecoration(
                color: Color.fromARGB(204, 255, 246,
                    169), // Background color of the container
                borderRadius: BorderRadius.circular(
                    10), // Border radius of the container
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // below is image
                      ClipOval(
                        child: Image.asset(
                          'assets/1.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      // below is name column which consists od product name and price
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Ronald Smith",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                            Text("Potato",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                            // below row is for icon and price
                            Row(
                              children: [
                                Icon(Icons.currency_rupee,size: 13,),
                                SizedBox(width: 1,),
                                Text("600",style: TextStyle(fontSize:13,fontWeight: FontWeight.w500),),
                              ],
                            ),

                          ],
                        ),
                      ),
                      // below is button
                      Container(
                        child: Row(children: [
                          Container(),
                          Container(),
                          SizedBox(
                            // width: 50,
                            child: Positioned(
                              right: 0,
                              bottom: 0,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => OrderStatus()),
                                  );
                                  print('Start clicked');
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white, // Button background color
                                  onPrimary: Colors.lightGreen, // Text color
                                  shape: RoundedRectangleBorder(
                                    // Button shape
                                    borderRadius: BorderRadius.circular(
                                        20), // Button border radius
                                    side: BorderSide(
                                        color:
                                        Colors.lightGreen), // Button border color
                                  ),
                                ),
                                child: Text('Order Status'),
                              ),
                            ),
                          ),
                          // ),
                        ]),
                      ),
                    ]),
              ),
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
