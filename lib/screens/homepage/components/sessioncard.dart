import 'package:flutter/material.dart';

class sessioncard extends StatelessWidget {
  const sessioncard({
    Key key,
    @required this.currentcard,
    @required this.imageurl,
  }) : super(key: key);
  // Color statuscolor;
  // String status;
  // string session number;
  final Widget currentcard;
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //this must be optimed later for responsiveness
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            border: Border.all(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        height: 120, //responsive fix later
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: currentcard,
            ),
            Expanded(
              child: Card(
                child: Image.asset(imageurl),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
