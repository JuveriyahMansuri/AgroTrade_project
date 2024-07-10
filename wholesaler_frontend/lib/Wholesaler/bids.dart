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


class Bids extends StatefulWidget {
  const Bids({Key? key}) : super(key: key);

  @override
  _BidsState createState() => _BidsState();
}

class _BidsState extends State<Bids> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Bids",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MyAuction()),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => NotifyRetailer()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 10),
                // below is of product
                Stack(
                  children: [
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(204, 255, 246, 169),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 5),
                          Container(
                              width: 120,
                              height: 120,
                              child: Image.asset("assets/potato.jpeg")),
                          SizedBox(height: 5),
                          Container(
                            child: Text(
                              "Potato",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // below is of opening price the grey box
                Container(
                  child: Stack(
                    children: [
                      Container(
                        height: 80,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            // below is of opening price
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Center(child: Text("Opening Price")),
                                      SizedBox(height: 3),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.currency_rupee),
                                            SizedBox(width: 1),
                                            Text(
                                              "400",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            // below is to draw a separator
                            Stack(),
                            SizedBox(width: 50,),
                            // below is of no of people live and time remaining
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  Column(

                                    children: [
                                      // below is for no of people live
                                      Stack(
                                        children: [
                                          Row(
                                            children: [
                                              Text("24",style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 18),),
                                              SizedBox(width: 2,),
                                              Text(" people are live",style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 18),),
                                            ],
                                          ),
                                        ],
                                      ),
                                      // below is of time remaining
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Stack(
                                          children: [
                                            Column(

                                              children: [
                                                // below is clock
                                                Stack(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.av_timer_rounded,
                                                          size: 12,
                                                          color: Colors.orange,
                                                        ),
                                                        SizedBox(width: 2,),
                                                        // below is time remaining
                                                        Text('01:23s remaining'),
                                                      ],
                                                    ),
                                                  ],
                                                ),

                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],


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
                SizedBox(height: 20),
                // below is of live auction
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Live Auction",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 18),),
                          Text("12 Bids Made",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 18),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      SingleChildScrollView(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // row 1
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      'assets/1.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  // SizedBox(width: 20),
                                  Text("Ronald Smith",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                  Row(
                                    children: [
                                      Icon(Icons.currency_rupee,size: 18,),
                                      Text("600",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                    ],
                                  ),
                                ],
                              ),
                              // row 2
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      'assets/1.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  // SizedBox(width: 20),
                                  Text("Cameron William",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                  Row(
                                    children: [
                                      Icon(Icons.currency_rupee,size: 18,),
                                      Text("540",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                    ],
                                  ),
                                ],
                              ),
                              // row 3
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      'assets/1.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  // SizedBox(width: 20),
                                  Text("Darell Steward",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                  Row(
                                    children: [
                                      Icon(Icons.currency_rupee,size: 18,),
                                      Text("500",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                    ],
                                  ),
                                ],
                              ),
                              // row 4
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      'assets/1.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  // SizedBox(width: 20),
                                  Text("Wade Warren",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                  Row(
                                    children: [
                                      Icon(Icons.currency_rupee,size: 18,),
                                      Text("480",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                    ],
                                  ),
                                ],
                              ),
                              // row 5
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      'assets/1.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  // SizedBox(width: 20),
                                  Text("Eric Fernandis",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                  Row(
                                    children: [
                                      Icon(Icons.currency_rupee,size: 18,),
                                      Text("470",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                    ],
                                  ),
                                ],
                              ),
                              // row 6
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      'assets/1.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  // SizedBox(width: 20),
                                  Text("Abu Khan",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                  Row(
                                    children: [
                                      Icon(Icons.currency_rupee,size: 18,),
                                      Text("450",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                    ],
                                  ),
                                ],
                              ),
                              // row 7
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      'assets/1.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  // SizedBox(width: 20),
                                  Text("Raj Dave",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                  Row(
                                    children: [
                                      Icon(Icons.currency_rupee,size: 18,),
                                      Text("450",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                    ],
                                  ),
                                ],
                              ),
                              // row 8
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      'assets/1.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  // SizedBox(width: 20),
                                  Text("Jack Smith",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                  Row(
                                    children: [
                                      Icon(Icons.currency_rupee,size: 18,),
                                      Text("440",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                    ],
                                  ),
                                ],
                              ),
                              // row 9
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      'assets/1.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  // SizedBox(width: 20),
                                  Text("Ram Maheshwari",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                  Row(
                                    children: [
                                      Icon(Icons.currency_rupee,size: 18,),
                                      Text("430",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                    ],
                                  ),
                                ],
                              ),
                              // row 10
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      'assets/1.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  // SizedBox(width: 20),
                                  Text("Yash Chauhan",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                  Row(
                                    children: [
                                      Icon(Icons.currency_rupee,size: 18,),
                                      Text("420",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                    ],
                                  ),
                                ],
                              ),
                              // row 11
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      'assets/1.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  // SizedBox(width: 20),
                                  Text("Mohan Patel",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                  Row(
                                    children: [
                                      Icon(Icons.currency_rupee,size: 18,),
                                      Text("420",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                    ],
                                  ),
                                ],
                              ),
                              // row 12
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      'assets/1.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  // SizedBox(width: 20),
                                  Text("Rita Trivedi",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                  Row(
                                    children: [
                                      Icon(Icons.currency_rupee,size: 18,),
                                      Text("420",style: TextStyle( fontWeight: FontWeight.w400,fontSize: 18),),
                                    ],
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ' ',
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
