import 'package:flutter/material.dart';

class completed_container extends StatelessWidget {
  const completed_container({
    Key key,
    @required this.session,
  }) : super(key: key);
  final int session;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text(
          'Session ${session + 1}',
          style: TextStyle(fontSize: 20),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Padding(
            padding: const EdgeInsets.only(top: 3, bottom: 3),
            child: Text(
              "  completed  ",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, right: 6, left: 6),
          child: Text(
            'Perfromed At ',
            style: TextStyle(fontSize: 10),
          ),
        ),
        Text(
          '8:12 AM',
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    ));
  }
}
