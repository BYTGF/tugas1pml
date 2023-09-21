import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class History extends StatelessWidget {
  String name, departure;
  History({super.key, 
    required this.name, 
    required this.departure
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController _name = TextEditingController(text: name);
    TextEditingController _departure = TextEditingController(text: departure);

    return Scaffold(
      appBar: AppBar(
        title: const Text('History')
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            // Create a Card for each item in the list
            return Card(
              color: Colors.blueAccent,
              elevation: 2,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: InkWell(
                onTap: () {
                  // Handle item tap here
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Passanger Name : ${_name.text}\nDeparture Date : ${_departure.text}'),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Departure Date', style: TextStyle(color: Colors.white)),
                          Text(_departure.text, style: const TextStyle(color: Colors.white))
                        ],
                      ),
                      Padding(padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(right: 12.0),
                            child: Icon(Icons.account_circle_outlined, size: 56.0, color: Colors.white),
                          ),
                          
                          
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(_name.text, style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white)),
                              const Text('Rp. 999.999.999,-', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Colors.white)),
                              const Text('Penumpang', style: TextStyle(fontSize: 12.0,color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                      ),
                      
                      const DottedLine(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.center,
                        lineLength: double.infinity,
                        // lineThickness: 1.0,
                        // dashLength: 4.0,
                        dashColor: Colors.white,
                        // dashGradient: [Colors.red, Colors.blue],
                        // dashRadius: 0.0,
                        // dashGapLength: 4.0,
                        // dashGapColor: Colors.transparent,
                        // dashGapGradient: [Colors.red, Colors.blue],
                        // dashGapRadius: 0.0,
                      ),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 8.0),
                        child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text('DPS', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white)),
                                      Text('Demek Per Seken', style: TextStyle(fontSize: 12.0, color: Colors.white)),
                                    ],
                                  ),
                                  Icon(Icons.keyboard_double_arrow_right_sharp, color: Colors.white, size: 48.0),
                                  Column(
                                    children: [
                                      Text('JKT', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white)),
                                      Text('fortyeit', style: TextStyle(fontSize: 12.0, color: Colors.white)),
                                    ],
                                  ),
                                ],
                              ) ,
                        )
                      
                    ],
                  ),
                ),
              ),
            );
          },
      ),
      ) 
      
    );
  }
}