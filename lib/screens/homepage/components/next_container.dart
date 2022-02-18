import 'package:flutter/material.dart';

class next_container extends StatelessWidget {
  const next_container({
    Key key,
    @required this.session,
  }) : super(key: key);
  final int session;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: Text(
            'Session ${session + 1} ',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_circle,
                  color: Colors.blue,
                )),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 173, 172, 170),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(top: 3, bottom: 3),
                child: Text(
                  "   Start   ",
                  style: TextStyle(color: Color.fromARGB(255, 22, 21, 21)),
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
