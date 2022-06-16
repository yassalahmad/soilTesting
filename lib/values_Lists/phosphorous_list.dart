// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:soiltesting/constant.dart';

// ignore: camel_case_types
class Phosphoruslist {
  final String threshold_phosphorus;
  final String phosphorus_value;

  Phosphoruslist({
    required this.threshold_phosphorus,
    required this.phosphorus_value,
  });
}

List<Phosphoruslist> phosphoruslist = [
  //1st Value
  Phosphoruslist(
      threshold_phosphorus: 'Threshold For Phosphorus: 28030',
      phosphorus_value: "Phosphorus Value: 0"),
  //2nd Value
  Phosphoruslist(
      threshold_phosphorus: 'Threshold For Phosphorus: 27992',
      phosphorus_value: 'Phosphorus Value: 10'),
  //3rd Value
  Phosphoruslist(
      threshold_phosphorus: 'Threshold For Phosphorus: 27954',
      phosphorus_value: 'Phosphorus Value: 20'),
  //4th Value
  Phosphoruslist(
      threshold_phosphorus: 'Threshold For Phosphorus: 27827',
      phosphorus_value: 'Phosphorus Value: 40'),
  //5th Value
  Phosphoruslist(
      threshold_phosphorus: 'Threshold For Phosphorus: 27789',
      phosphorus_value: 'Phosphorus Value: 80'),
  //6th Value
  Phosphoruslist(
      threshold_phosphorus: 'Threshold For Phosphorus: 27751',
      phosphorus_value: 'Phosphorus Value: 90'),
  //7th Value
  Phosphoruslist(
      threshold_phosphorus: 'Threshold For Phosphorus: 27582',
      phosphorus_value: 'Phosphorus Value: 100'),
  //8th Value
  Phosphoruslist(
      threshold_phosphorus: 'Threshold For Phosphorus: 27403',
      phosphorus_value: 'Phosphorus Value: 110'),
  //9th Value
  Phosphoruslist(
      threshold_phosphorus: 'Threshold For Phosphorus: 27235',
      phosphorus_value: 'Phosphorus Value: 115'),
  //10th Value
  Phosphoruslist(
      threshold_phosphorus: 'Threshold For Phosphorus: 27056',
      phosphorus_value: 'Phosphorus Value: 120'),
  //11th Value
  Phosphoruslist(
      threshold_phosphorus: 'Threshold For Phosphorus: 26887',
      phosphorus_value: 'Phosphorus Value: 140'),
  //12th Value
  Phosphoruslist(
      threshold_phosphorus: 'Threshold For Phosphorus: 25126',
      phosphorus_value: 'Phosphorus Value: 160'),
  //13th Value
  Phosphoruslist(
      threshold_phosphorus: 'Threshold For Phosphorus: 23364',
      phosphorus_value: 'Phosphorus Value: 180'),
  //14th Value
  Phosphoruslist(
      threshold_phosphorus: 'Threshold For Phosphorus: 21613',
      phosphorus_value: 'Phosphorus Value: 200'),
  //15th Value
  Phosphoruslist(
      threshold_phosphorus: 'Threshold For Phosphorus: 19851',
      phosphorus_value: 'Phosphorus Value: 220'),
  //16th Value
  Phosphoruslist(
      threshold_phosphorus: 'Threshold For Phosphorus: 18090',
      phosphorus_value: 'Phosphorus Value: 240'),
];

// ignore: use_key_in_widget_constructors
class PhosphorusList extends StatefulWidget {
  @override
  _PhosphorusListState createState() => _PhosphorusListState();
}

class _PhosphorusListState extends State<PhosphorusList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phosphorus List'),
        centerTitle: true,
        backgroundColor: green,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: phosphoruslist.length,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .1,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Card(
                elevation: 0,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    phosphoruslist[index]
                                        .threshold_phosphorus
                                        .toString(),
                                    style: TextStyle(
                                      color: green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Row(
                                  children: [
                                    const SizedBox(width: 10),
                                    Expanded(
                                      flex: 2,
                                      // ignore: deprecated_member_use
                                      child: Text(
                                        phosphoruslist[index]
                                            .phosphorus_value
                                            .toString(),
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
