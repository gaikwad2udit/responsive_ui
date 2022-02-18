import 'package:clone_app/screens/resultpage/components/button1.dart';
import 'package:clone_app/screens/resultpage/components/button2.dart';
import 'package:clone_app/screens/resultpage/components/button3.dart';
import 'package:clone_app/screens/resultpage/components/dropdowncard.dart';
import 'package:clone_app/screens/resultpage/components/uppercontainer.dart';
import 'package:clone_app/scroll.dart';
import 'package:clone_app/chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class resultpage extends StatefulWidget {
  const resultpage({Key key}) : super(key: key);
  static const routename = 'resultpage';

  @override
  State<resultpage> createState() => _resultpageState();
}

class _resultpageState extends State<resultpage> {
  bool isfirst = false;
  bool issecond = false;
  bool isthird = false;

  void setallpressedfalse() {
    isfirst = false;
    issecond = false;
    isthird = false;
  }

//scroll import

  List<List<int>> randomList;
  int loc = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          // toolbarHeight: 40,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 107, 107, 107)),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              //for upper container
              Expanded(child: uppercontainer()),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    //dropdown button
                    InkWell(
                      onTap: () {
                        if (isfirst == false) {
                          setallpressedfalse();
                          setState(() {
                            isfirst = true;
                          });
                        } else {
                          setallpressedfalse();
                          setState(() {
                            isfirst = false;
                          });
                        }
                      },
                      child: button1(isfirst: isfirst),
                    ),
                    if (isfirst) dropdowncard(),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        if (issecond == false) {
                          setallpressedfalse();
                          setState(() {
                            issecond = true;
                          });
                        } else {
                          setallpressedfalse();
                          setState(() {
                            issecond = false;
                          });
                        }
                      },
                      child: button2(issecond: issecond),
                    ),
                    if (issecond) dropdowncard(),
                    SizedBox(
                      height: 10,
                    ),

                    InkWell(
                      onTap: () {
                        if (isthird == false) {
                          setallpressedfalse();
                          setState(() {
                            isthird = true;
                          });
                        } else {
                          setallpressedfalse();
                          setState(() {
                            isthird = false;
                          });
                        }
                      },
                      child: button3(isthird: isthird),
                    ),
                    if (isthird) dropdowncard(),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                )),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
