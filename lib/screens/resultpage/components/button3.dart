import 'package:flutter/material.dart';

class button3 extends StatelessWidget {
  const button3({
    Key key,
    @required this.isthird,
  }) : super(key: key);

  final bool isthird;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black,
          blurRadius: 2.0,
          spreadRadius: 0.0,
          // offset: Offset(2.0, 2.0), // shadow direction: bottom right
        )
      ], color: Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.all(Radius.circular(10))),
      height: MediaQuery.of(context).size.height * .09,
      width: MediaQuery.of(context).size.width,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(color: isthird ? Colors.white : Color.fromARGB(255, 38, 55, 112), borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
            height: double.infinity,
            width: 7,
          ),
          Container(
            decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10))),
            width: MediaQuery.of(context).size.width - 48,
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " Hamstring Stretch",
                  style: TextStyle(color: isthird ? Colors.blue : Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
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
                      child: isthird
                          ? Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            )
                          : Icon(Icons.arrow_drop_up, color: Colors.grey),
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
