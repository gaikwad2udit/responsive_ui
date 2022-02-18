import 'package:flutter/material.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class uppercontainer extends StatelessWidget {
  const uppercontainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Column(children: [
        Expanded(
            flex: 3,
            child: Container(
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Expanded(
                      flex: 4,
                      child: Container(
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/bubble.png',
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * .2,
                              ),
                              child: Text(
                                'You did amazing!',
                                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .2, top: MediaQuery.of(context).size.height * .04),
                              child: Container(
                                // color: Colors.red,
                                child: Row(
                                  children: [
                                    Text(
                                      'Session 1 complete ',
                                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: Colors.indigo,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .07),
                              child: GFProgressBar(
                                percentage: 0.64,
                                //width: 100,
                                radius: MediaQuery.of(context).size.height * .17,
                                circleWidth: 8,
                                type: GFProgressType.circular,
                                backgroundColor: Colors.black26,
                                progressBarColor: Colors.indigo,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 10, top: 50),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Accuracy",
                                        style: TextStyle(fontSize: 15, color: Colors.indigo, fontWeight: FontWeight.bold),
                                      ),
                                      Center(
                                        child: Text(
                                          '  64%',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Color.fromARGB(255, 20, 4, 4)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 233, 228, 228)), shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.play_circle_filled,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                    Text('  play video',
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ],
                                )),
                            ElevatedButton(
                                style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(Icons.analytics),
                                    Text('  Analytics')
                                  ],
                                )),
                          ],
                        ),
                      ))
                ],
              ),
            )),
        Expanded(
            flex: 1,
            child: Container(
              color: Color.fromARGB(255, 198, 250, 100),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: double.infinity,
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          'See Details',
                          style: TextStyle(fontSize: 29, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.greenAccent,
                              ),
                              Text(
                                '  Complete',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.amberAccent,
                              ),
                              Text(
                                '  Skipped',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.redAccent,
                              ),
                              Text(
                                '  Incomplete',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ))
      ]),
    );
  }
}
