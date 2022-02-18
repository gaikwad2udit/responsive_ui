import 'package:flutter/material.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';

class progresscard extends StatelessWidget {
  const progresscard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height * .01,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .1,
            right: MediaQuery.of(context).size.width * .1),
        //card
        child: Container(
          //borderOnForeground: true,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                  width: 2, color: Color.fromARGB(255, 189, 180, 180))),
          //color: Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //color: Color.fromARGB(255, 255, 255, 255),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "  Today's Progress",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                        Text('60%  ',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo))
                      ],
                    )),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: GFProgressBar(
                    percentage: .6,
                    lineHeight: 10,
                    alignment: MainAxisAlignment.spaceBetween,
                    child: const Text(
                      '',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    backgroundColor: Colors.black26,
                    progressBarColor: Colors.indigo,
                  ),
                ),
              ),
              //last container
              Expanded(
                flex: 2,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  // color: Color.fromARGB(255, 253, 250, 250),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        //color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Icon(
                            //   Icons.person,
                            //   size: 20,
                            //   color: Colors.black,
                            // ),

                            Image.asset('assets/images/4.jpg'),
                            Column(
                              children: [
                                Text(
                                  '  completed',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black),
                                ),
                                Text(
                                  '  2 sessions',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        //color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Icon(
                            //   Icons.pending,
                            //   size: 20,
                            //   color: Colors.black,
                            // ),
                            Image.asset('assets/images/5.jpg'),
                            Column(
                              children: [
                                Text(
                                  'pending ',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black),
                                ),
                                Text(
                                  ' 2 sessions  ',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
