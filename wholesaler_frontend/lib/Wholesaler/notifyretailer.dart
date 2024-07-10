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

class NotifyRetailer extends StatefulWidget {
  const NotifyRetailer({Key? key}) : super(key: key);

  @override
  _NotifyRetailerState createState() => _NotifyRetailerState();
}

class _NotifyRetailerState extends State<NotifyRetailer> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MyAuction()),
            );
          },
        ),
        title: Center(
            child: Text("Auction Winner",
                style: TextStyle(fontWeight: FontWeight.bold))),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.9, //50% of screen height
        width: MediaQuery.of(context).size.width * 0.9, //50% of screen width
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Color.fromARGB(0, 255, 131, 146),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Stack(
                      children: [
                        Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(
                                204, 255, 246, 169), // Background color of the container
                            borderRadius:
                            BorderRadius.circular(10), // Border radius of the container
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  width: 120,
                                  height: 120,
                                  child: Image.asset("assets/potato.jpeg")),
                              SizedBox(
                                height: 5,
                              ),
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
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child:SizedBox(width: 400,
                    child: Row(
                      children: [
                        Text("Opening Price : ₹ ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                        Text("400",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),


                      ],
                    ),

                  ),
                ),
              ),
              SizedBox(height:30),
              // start qty textbox
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: SizedBox(width:400,
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(child: Row(
                          children: [
                            Text("Quantity : ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                            Text("20",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                            Text(" kgs",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),


                          ],
                        ),
                        ),
                        SizedBox(width: 60,),
                        Container(

                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height:30),
              // start final price textbox
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child:SizedBox(width: 400,
                    child: Row(
                      children: [
                        Text("Final Price : ₹ ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                        Text("600",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),


                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height:30),
              // start start date time textbox
              // Container(
              //   child: SizedBox(width:400,

              //       child:Container(child: Text("Start Auction : 16-02-2024 at 02:30:00 PM",style: TextStyle(fontSize: 18),)),


              //   ),

              //    ),
              // SizedBox(height:30),
              // start end date time textbox
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: SizedBox(width:400,

                    child:Container(
                      child: Row(
                        children: [
                          Text("Duration : ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                          Text("2 hrs",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),


                        ],
                      ),
                    ),

                    // here below we will place date time picker


                  ),

                ),
              ),
              SizedBox(height:30),

              // start description textbox
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child:SizedBox(width: 400,
                    child: Row(
                      children: [
                        Text("Winner : ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                        Text("Ronald Smith",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),


                      ],
                    ),   ),
                ),
              ),
              SizedBox(height:20),
              // start notify btn
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => OrderStatus()),
                    );
                  },
                  child: Text(
                    "Order Status",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    onPrimary: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  ),
                ),
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
