// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:soiltesting/constant.dart';

// ignore: camel_case_types
class PhList {
  final String threshold;
  final String ph;

  PhList({
    required this.threshold,
    required this.ph,
  });
}

List<PhList> phlist = [
  //1st Value
  PhList(threshold: 'Threshold For PH: 24018', ph: "PH: 4.0"),
  //2nd Value
  PhList(threshold: 'Threshold For PH: 24250', ph: 'PH: 4.2'),
  //3rd Value
  PhList(threshold: 'Threshold For PH: 24373', ph: 'PH: 4.4'),
  //4th Value
  PhList(threshold: 'Threshold For PH: 24605', ph: 'PH: 4.6'),
  //5th Value
  PhList(threshold: 'Threshold For PH: 24664', ph: 'PH: 4.8'),
  //6th Value
  PhList(threshold: 'Threshold For PH: 24960', ph: 'PH: 5.0'),
  //7th Value
  PhList(threshold: 'Threshold For PH: 24996', ph: 'PH: 5.2'),
  //8th Value
  PhList(threshold: 'Threshold For PH: 25022', ph: 'PH: 5.4'),
  //9th Value
  PhList(threshold: 'Threshold For PH: 25158', ph: 'PH: 5.6'),
  //10th Value
  PhList(threshold: 'Threshold For PH: 25184', ph: 'PH: 5.8'),
  //11th Value
  PhList(threshold: 'Threshold For PH: 25220', ph: 'PH: 6.0'),
  //12th Value
  PhList(threshold: 'Threshold For PH: 25421', ph: 'PH: 6.2'),
  //13th Value
  PhList(threshold: 'Threshold For PH: 25613', ph: 'PH: 6.4'),
  //14th Value
  PhList(threshold: 'Threshold For PH: 25914', ph: 'PH: 6.8'),
  //15th Value
  PhList(threshold: 'Threshold For PH: 26106', ph: 'PH: 7.0'),
  //16th Value
  PhList(threshold: 'Threshold For PH: 26307', ph: 'PH: 7.2'),
  //17th Value
  PhList(threshold: 'Threshold For PH: 25897', ph: 'PH: 7.4'),
  //18th Value
  PhList(threshold: 'Threshold For PH: 25376', ph: 'PH: 7.6'),
  //19th Value
  PhList(threshold: 'Threshold For PH: 24966', ph: 'PH: 7.8'),
  //20th Value
  PhList(threshold: 'Threshold For PH: 24445', ph: 'PH: 8.0'),
  //21st Value
  PhList(threshold: 'Threshold For PH: 24035', ph: 'PH: 8.2'),
  //22nd Value
  PhList(threshold: 'Threshold For PH: 22816', ph: 'PH: 8.4'),
  //23rd Value
  PhList(threshold: 'Threshold For PH: 21698', ph: 'PH: 8.6'),
  //24th Value
  PhList(threshold: 'Threshold For PH: 20479', ph: 'PH: 8.8'),
  //25th Value
  PhList(threshold: 'Threshold For PH: 19361', ph: 'PH: 9.0'),
  //26th Value
  PhList(threshold: 'Threshold For PH: 3933', ph: 'PH: 9.2'),
  //27th Value
  PhList(threshold: 'Threshold For PH: 8529', ph: 'PH: 9.4'),
  //28th Value
  PhList(threshold: 'Threshold For PH: 10872', ph: 'PH: 9.6'),
  //29th Value
  PhList(threshold: 'Threshold For PH: 18142', ph: 'PH: 9.8'),
];

class PHList extends StatefulWidget {
  @override
  _PHListState createState() => _PHListState();
}

class _PHListState extends State<PHList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PH List'),
        centerTitle: true,
        backgroundColor: green,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: phlist.length,
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
                                    phlist[index].threshold.toString(),
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
                                        phlist[index].ph.toString(),
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
