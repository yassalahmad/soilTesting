import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final Icon buttonIcon;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.buttonIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 4,
            offset: Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          buttonIcon,
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            // style: TextStyle(
            //   color: Color(0xff6dc8ad),

            //   fontSize: 15,
            // ),

            style: TextStyle(
              fontSize: 15,
              fontFamily: "Horizon",
              color: Colors.green,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
