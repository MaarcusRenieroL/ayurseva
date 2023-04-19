import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 74, 140, 111),
        title: const Text(
          'Medications',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
        color: Color.fromARGB(255, 214, 228, 222),
        ),
        child: ListView(
          children: [
          Container(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 13),
                  padding: const EdgeInsets.all(13),
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 60, 119, 93),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Medication',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.alarm,
                                size: 30,
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '1 pill',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '10:00 AM',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
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
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Past medications"),
                DataTable(columns: const [
                  DataColumn(label: Text("Medication")),
                  DataColumn(label: Text("Symptom")),
                  DataColumn(label: Text("Duration")),
                ], rows: const [
                  DataRow(cells: [
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                    DataCell(Text("data")),
                  ]),
                ]),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
