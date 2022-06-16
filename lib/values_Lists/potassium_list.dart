// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:soiltesting/constant.dart';

// ignore: camel_case_types
class PotassiumList {
  final String threshold_pottasium;
  final String potassium_value;

  PotassiumList({
    required this.threshold_pottasium,
    required this.potassium_value,
  });
}

List<PotassiumList> potassiumlist = [
  //1st Value
  PotassiumList(
      threshold_pottasium: 'Threshold For Potassium: 27675',
      potassium_value: "Potassium Value: 0"),
  //2nd Value
  PotassiumList(
      threshold_pottasium: 'Threshold For Potassium: 26962',
      potassium_value: 'Potassium Value: 10'),
  //3rd Value
  PotassiumList(
      threshold_pottasium: 'Threshold For Potassium: 26250',
      potassium_value: 'Potassium Value: 20'),
  //4th Value
  PotassiumList(
      threshold_pottasium: 'Threshold For Potassium: 25427',
      potassium_value: 'Potassium Value: 40'),
  //5th Value
  PotassiumList(
      threshold_pottasium: 'Threshold For Potassium: 24715',
      potassium_value: 'Potassium Value: 80'),
  //6th Value
  PotassiumList(
      threshold_pottasium: 'Threshold For Potassium: 24002',
      potassium_value: 'Potassium Value: 90'),
  //7th Value
  PotassiumList(
      threshold_pottasium: 'Threshold For Potassium: 23492',
      potassium_value: 'Potassium Value: 100'),
  //8th Value
  PotassiumList(
      threshold_pottasium: 'Threshold For Potassium: 23072',
      potassium_value: 'Potassium Value: 110'),
  //9th Value
  PotassiumList(
      threshold_pottasium: 'Threshold For Potassium: 22562',
      potassium_value: 'Potassium Value: 115'),
  //10th Value
  PotassiumList(
      threshold_pottasium: 'Threshold For Potassium: 22142',
      potassium_value: 'Potassium Value: 120'),
  //11th Value
  PotassiumList(
      threshold_pottasium: 'Threshold For Potassium: 21632',
      potassium_value: 'Potassium Value: 140'),
  //12th Value
  PotassiumList(
      threshold_pottasium: 'Threshold For Potassium: 20591',
      potassium_value: 'Potassium Value: 160'),
  //13th Value
  PotassiumList(
      threshold_pottasium: 'Threshold For Potassium: 19541',
      potassium_value: 'Potassium Value: 180'),
  //14th Value
  PotassiumList(
      threshold_pottasium: 'Threshold For Potassium: 18600',
      potassium_value: 'Potassium Value: 200'),
  //15th Value
  PotassiumList(
      threshold_pottasium: 'Threshold For Potassium: 17550',
      potassium_value: 'Potassium Value: 220'),
  //16th Value
  PotassiumList(
      threshold_pottasium: 'Threshold For Potassium: 16509',
      potassium_value: 'Potassium Value: 240'),
];

// ignore: use_key_in_widget_constructors
class Potassiumlist extends StatefulWidget {
  @override
  _PotassiumlistState createState() => _PotassiumlistState();
}

class _PotassiumlistState extends State<Potassiumlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Potassium List'),
        centerTitle: true,
        backgroundColor: green,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: potassiumlist.length,
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
                                    potassiumlist[index]
                                        .threshold_pottasium
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
                                        potassiumlist[index]
                                            .potassium_value
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
