import 'package:flutter/material.dart';

class greeting extends StatelessWidget {
  const greeting({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .1),
        child: Text(
          "Good Morning\nJane",
          style: TextStyle(
              color: Color.fromARGB(255, 41, 39, 39),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
