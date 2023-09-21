import 'package:flutter/material.dart';
import 'package:tugas1billy/history.dart';

class BookForm extends StatelessWidget {
  const BookForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _name = TextEditingController();
    TextEditingController _departure = TextEditingController();

    String selectedValue = 'Jakarta';
    String selectedValue2 = 'First Class';

    return Scaffold(
      appBar: AppBar(title: const Text('Book Ticket')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: const EdgeInsets.all(20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  const ColoredBox(
                    color: Colors.blueAccent,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.document_scanner_sharp,
                            color: Colors.white,
                            size: 36.0,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Fill the Form According to Your Identity',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _name,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Full Name',
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 0),
                          child: Text(
                            'Departure',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(8.0, 16.0, 16.0, 0),
                          child: Text(
                            'Arrival',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(4.0, 0, 0, 0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: selectedValue,
                                onChanged: (newValue) {
                                  selectedValue = newValue!;
                                  print('Selected value: $selectedValue');
                                },
                                items: <String>[
                                  'Jakarta',
                                  'Surabaya',
                                  'Manado',
                                  'Papua',
                                ].map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                hint: const Text('Pilih Tipe / Kelas'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Icon(Icons.compare_arrows),
                      Flexible(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(4.0, 0, 0, 0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: selectedValue,
                                onChanged: (newValue) {
                                  selectedValue = newValue!;
                                  print('Selected value: $selectedValue');
                                },
                                items: <String>[
                                  'Jakarta',
                                  'Surabaya',
                                  'Manado',
                                  'Papua',
                                ].map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                hint: const Text('Pilih Tipe / Kelas'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 32.0),
                        child: Text('Children ( < 4 Years Old)'),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: IconButton(
                          color: Colors.white,
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            // Do something
                          },
                        ),
                      ),
                      const Text('0'),
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: IconButton(
                          color: Colors.white,
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            // Do something
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Flexible(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text('Adult'),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: IconButton(
                            color: Colors.white,
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              // Do something
                            },
                          ),
                        ),
                      ),
                      const Text('0'),
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: IconButton(
                          color: Colors.white,
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            // Do something
                          },
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text('Type / Class'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedValue2,
                            onChanged: (newValue) {
                              selectedValue2 = newValue!;
                              print('Selected value: $selectedValue2');
                            },
                            items: <String>[
                              'First Class',
                              'Business',
                              'Economy',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: const Text('Type / Class'),
                            isExpanded: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _departure,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Departure Date',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Phone Number / Email',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16.0),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => History(
                              name: _name.text,
                              departure: _departure.text,
                            ),
                          ),
                        );
                      },
                      child: const Text('Book Ticket'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
