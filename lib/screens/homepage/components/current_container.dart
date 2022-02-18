import 'package:flutter/material.dart';

class current_container extends StatelessWidget {
  const current_container({
    Key key,
    @required this.session,
  }) : super(key: key);
  final int session;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
          child: Column(
        children: [
          Text(
            'Session ${session + 1}',
            style: TextStyle(fontSize: 20),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.only(top: 3, bottom: 3),
              child: Text(
                "  performed  ",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Text(
            'Enter pain score',
            style: TextStyle(fontSize: 12),
          ),
          Row(
            children: [
              IconButton(
                  color: Colors.black,
                  onPressed: () {},
                  icon: Icon(
                    Icons.replay_rounded,
                    color: Colors.blue,
                  )),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 173, 172, 170),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 3, bottom: 3),
                  child: Text(
                    "   Retry   ",
                    style: TextStyle(color: Color.fromARGB(255, 22, 21, 21)),
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
