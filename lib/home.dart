// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tugas1billy/bookform.dart';


class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> transportationList = [
    {
      "title": "Plane",
      "icon": Icons.airplanemode_active,
    },
    {
      "title": "Train",
      "icon": Icons.train,
    },
    {
      "title": "Bus",
      "icon": Icons.bus_alert,
    },
    {
      "title": "Bus",
      "icon": Icons.bus_alert,
    },
    {
      "title": "Bus",
      "icon": Icons.bus_alert,
    },
  ];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0), // Adjust the radius as needed
                bottomRight: Radius.circular(40.0), // Adjust the radius as needed
              ),
               // You can add a border if necessary
            ),
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome', style: TextStyle(fontSize: 12.0, color: Colors.white)),
                        Text('Gabriella Abigail', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white)),
                      ],
                    ),
                    Icon(Icons.account_circle_rounded, color: Colors.white, size: 48.0),
                  ],
                ),
                SizedBox(height: 16.0),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12.0),
                  width: double.infinity,
                  child: Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: const [
                          Icon(Icons.search_sharp, color: Colors.white, size: 12.0),
                          SizedBox(width: 16.0),
                          Text('Where To Go ?', style: TextStyle(color: Colors.white, fontSize: 12.0)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: 
                        Image.asset(
                          'assets/ellay.jpg',
                          fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
              child: Text(
                'Choose Transportation',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: ListView.builder(
            shrinkWrap: true, // Allow the inner ListView to scroll without conflict
            itemCount: transportationList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookForm(),
                    ),
                  );
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    color: Colors.blueAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(transportationList[index]["title"], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36.0, color: Colors.white)),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 12.0),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text('BOOK NOW', style: TextStyle(color: Colors.blue, fontSize: 12.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(transportationList[index]["icon"], color: Colors.white, size: 120.0),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          ),
          
        ],
      ),
    );
  }
}
