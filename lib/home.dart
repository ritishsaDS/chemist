import 'package:chemist/bottombar.dart';
import 'package:chemist/common.dart';
import 'package:chemist/update_status.dart';
import 'package:chemist/view_history.dart';
import 'package:flutter/material.dart';

import 'app_constant.dart';
import 'orders.dart';
import 'orderstatus.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    void _onItemTappped(int value) {
      setState(() {
        _selectedIndex = value;
      });
    }

    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("assets/images/bg.png"),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Container(
            margin: EdgeInsets.all(15),
            child: ListView(
              children: [
                Container(
                    child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      color: apptextcolor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(SampleProfileImageUrl),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      " ˇ  Punjab",
                      style: TextStyle(
                          color: apptextcolor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: SizedBox()),
                    Image.asset(
                      "assets/images/bell.png",
                      height: 25,
                      width: 25,
                    )
                  ],
                )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "Wednesday, 10 March",
                    style: TextStyle(color: apptextcolor),
                  ),
                ),
                Container(
                  child: Text(
                    "Hi , Medical Store",
                    style: TextStyle(
                        color: apptextcolor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/tile.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Number of Orders",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "15",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/tile.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pending Orders\n5",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "Complete Orders\n10",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    Container(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: 250,
                            margin: EdgeInsets.only(top: 20),
                            padding: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: apptextcolor),
                              borderRadius: BorderRadius.circular(5),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Positioned(
                              left: 75,
                              top: 12,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 2),
                                    child: Icon(
                                      Icons.circle,
                                      color: apptextcolor,
                                      size: 12,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        bottom: 10, right: 10, left: 10),
                                    color: Colors.white,
                                    child: Text(
                                      '  What are you Looking for',
                                      style: TextStyle(
                                        color: apptextcolor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 2),
                                    child: Icon(
                                      Icons.circle,
                                      color: apptextcolor,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 50, left: 10, right: 10),
                        child: Column(
                          children: [
                            GestureDetector(
                                child: Card(
                                  elevation: 2,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 10,
                                              right: 10,
                                              top: 5,
                                              bottom: 5),
                                          child: Image.asset(
                                            "assets/images/healthrecordicon.png",
                                            height: 25,
                                            width: 25,
                                          ),
                                        ),
                                        Text(
                                          "Orders",
                                          style: TextStyle(
                                              color: apptextcolor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.arrow_right,
                                          color: apptextcolor,
                                        )
                                      ]),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Order()));
                                }),
                            SizedBox(
                              height: 7,
                            ),
                            GestureDetector(
                              child: Card(
                                elevation: 2,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 5,
                                            bottom: 5),
                                        child: Image.asset(
                                          "assets/images/record upload icon.png",
                                          height: 25,
                                          width: 25,
                                        ),
                                      ),
                                      Text(
                                        "Upload Status",
                                        style: TextStyle(
                                            color: apptextcolor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        color: apptextcolor,
                                      )
                                    ]),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => UpdateStatus()));
                              },
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            GestureDetector(
                              child: Card(
                                elevation: 2,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 5,
                                            bottom: 5),
                                        child: Image.asset(
                                          "assets/images/med. status icon.png",
                                          height: 25,
                                          width: 25,
                                        ),
                                      ),
                                      Text(
                                        "Order Status",
                                        style: TextStyle(
                                            color: apptextcolor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        color: apptextcolor,
                                      )
                                    ]),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OrderStatus()));
                              },
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            GestureDetector(
                              child: Card(
                                elevation: 2,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 5,
                                            bottom: 5),
                                        child: Image.asset(
                                          "assets/images/med. status icon.png",
                                          height: 25,
                                          width: 25,
                                        ),
                                      ),
                                      Text(
                                        "View History",
                                        style: TextStyle(
                                            color: apptextcolor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        color: apptextcolor,
                                      )
                                    ]),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ViewHistory()));
                              },
                            ),
                          ],
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomTabs(1, true),
    );
  }

  showIndicator(bool show) {
    return show
        ? Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Icon(Icons.brightness_1, size: 10, color: Colors.orange),
          )
        : SizedBox();
  }
}
