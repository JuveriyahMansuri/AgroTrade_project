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

class OrderStatus extends StatefulWidget {
  const OrderStatus({super.key});

  @override
  State<OrderStatus> createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  int _currentIndex=0;
  bool checkBoxValueOrderConfirmed = false;
  bool checkBoxValueOrderPrepared = false;
  bool checkBoxValueOrderOutForDelivery = false;
  bool checkBoxValueOrderDelivered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();

          },
        ),

        title: Center(
            child: Text("Order Status",
                style: TextStyle(fontWeight: FontWeight.bold))),
        backgroundColor: Colors.white,

      ),

      body:Container(

        height: MediaQuery.of(context).size.height * 0.9, //50% of screen height
        width: MediaQuery.of(context).size.width * 0.9, //50% of screen width

        child: SingleChildScrollView(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: 80,),
              // start order taken
              Container(

                  width: MediaQuery.of(context).size.width * 0.9, //50% of screen width

                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  SizedBox(width:0.5),
                      Container(width:60,height:60,child: Image.asset("assets/order_taken.png")),
                      // SizedBox(width:40),
                      Container(child:Center(child: Text("Order Confirmed",style: TextStyle(fontSize: 20),)),),
                      // SizedBox(width:100),
                      Container(width: 50,height: 50,child:Checkbox(
                        shape: const CircleBorder(),
                        value: checkBoxValueOrderConfirmed,
                        onChanged: (bool? newValue) {
                          setState(() {
                            checkBoxValueOrderConfirmed = newValue!;
                          });
                        },
                      ),),
                    ],
                  )
              ),
              Container(height: 80,),
              // start order prepared
              Container(

                  width: MediaQuery.of(context).size.width * 0.9, //50% of screen width

                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  SizedBox(width:0.5),
                      Container(width:60,height:60,child: Image.asset("assets/order_prepared.png")),
                      // SizedBox(width:40),
                      Container(child:Center(child: Text("Order Prepared",style: TextStyle(fontSize: 20),)),),
                      // SizedBox(width:100),
                      Container(width: 50,height: 50,child:Checkbox(
                        shape: const CircleBorder(),
                        value: checkBoxValueOrderPrepared,
                        onChanged: (bool? newValue) {
                          setState(() {
                            checkBoxValueOrderPrepared = newValue!;
                          });
                        },
                      ),),
                    ],
                  )
              ),
              Container(height: 80,),
              // start out for delivery
              Container(

                  width: MediaQuery.of(context).size.width * 0.9, //50% of screen width

                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  SizedBox(width:0.5),
                      Container(width:60,height:60,child: Image.asset("assets/out_for_delivery.jpg")),
                      // SizedBox(width:40),
                      Container(child:Center(child: Text("Out for Delivery",style: TextStyle(fontSize: 20),)),),
                      // SizedBox(width:100),
                      Container(width: 50,height: 50,child:Checkbox(
                        shape: const CircleBorder(),
                        value: checkBoxValueOrderOutForDelivery,
                        onChanged: (bool? newValue) {
                          setState(() {
                            checkBoxValueOrderOutForDelivery = newValue!;
                          });
                        },
                      ),),
                    ],
                  )
              ),
              Container(height: 80,),
              // start order delivered
              Container(

                  width: MediaQuery.of(context).size.width * 0.9, //50% of screen width

                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  SizedBox(width:0.5),
                      Container(width:80,height:80,child: Image.asset("assets/order_delivered.png")),
                      // SizedBox(width:40),
                      Container(child:Center(child: Text("Order Delivered",style: TextStyle(fontSize: 20),)),),
                      // SizedBox(width:100),
                      Container(width: 50,height: 50,child: Checkbox(
                        shape: const CircleBorder(),

                        value: checkBoxValueOrderDelivered,
                        onChanged: (bool? newValue) {
                          setState(() {
                            checkBoxValueOrderDelivered = newValue!;
                          });
                        },
                      ),),
                    ],
                  )
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