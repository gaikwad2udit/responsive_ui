import 'package:flutter/material.dart';

class button1 extends StatelessWidget {
  const button1({
    Key key,
    @required this.isfirst,
  }) : super(key: key);

  final bool isfirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black,
          blurRadius: 1.0,
          spreadRadius: 0.0,
          // offset: Offset(
          //   0.0,
          //   1.0,
          // ), // shadow direction: bottom right
        )
      ], color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
      height: MediaQuery.of(context).size.height * .09,
      width: MediaQuery.of(context).size.width,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(color: isfirst ? Colors.white : Color.fromARGB(255, 37, 140, 224), borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
            height: double.infinity,
            width: 7,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10))),
            width: MediaQuery.of(context).size.width - 48,
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "  Leg Raise",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: isfirst ? Colors.blue : Colors.black),
                ),
                Row(
                  children: [
                    Text(
                      ' Sets ',
                      style: TextStyle(fontSize: 18),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Icon(
                        Icons.check_circle,
                        color: Color.fromARGB(255, 65, 201, 183),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: Icon(
                        Icons.fast_forward,
                        color: Colors.amberAccent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: Icon(
                        Icons.cancel_rounded,
                        color: Colors.redAccent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: isfirst ? Icon(Icons.arrow_drop_down, color: Colors.grey) : Icon(Icons.arrow_drop_up, color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
