import 'package:clone_app/screens/homepage/completed_container.dart';
import 'package:clone_app/screens/homepage/components/current_container.dart';
import 'package:clone_app/screens/homepage/components/sessioncard.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import 'package:clone_app/screens/homepage/components/greetingheader.dart';
import 'package:clone_app/screens/homepage/components/next_container.dart';
import 'package:clone_app/screens/homepage/components/progresscard.dart';
import 'package:clone_app/screens/resultpage/resultpage.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
//  const homepage({Key? key}) : super(key: key);
  int _selected = 0;

  void showscreen(int value) {
    if (value == 0) {
      setState(() {
        _selected = value;
      });
    }
    if (value == 1) {
      setState(() {
        _selected = value;
      });
    }
    if (value == 2) {
      setState(() {
        _selected = value;
      });
    }
    if (value == 3) {
      setState(() {
        _selected = value;
      });
    }
  }

  int currentstep = 0;
  int laststep = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 45,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        body: Column(
          children: [
            //containers for bottom navigation bar
            //jome page containers
            Container(
              height: MediaQuery.of(context).size.height * .795,
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: greeting(),
                  ),
                  Expanded(
                    flex: 1,
                    child: progresscard(),
                  ),
                  Expanded(
                    flex: 5,
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Theme(
                            //  data: Theme.of(context).copyWith(colorScheme: ColorScheme.light(primary: Colors.blue),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * .03,
                                  left: MediaQuery.of(context).size.width * .04,
                                  right:
                                      MediaQuery.of(context).size.width * .03),
                              child: Stepper(
                                // controlsBuilder: (context, details) {
                                //   return const SizedBox(
                                //     width: 0,
                                //     height: 0,
                                //   );
                                // },
                                type: StepperType.vertical,
                                currentStep: currentstep,
                                steps: [
                                  Step(
                                      state: currentstep >= 0
                                          ? StepState.complete
                                          : StepState.disabled,
                                      isActive: currentstep >= 0,
                                      title: currentstep == 0
                                          ? sessioncard(
                                              imageurl: 'assets/images/1.jpg',
                                              currentcard:
                                                  current_container(session: 0),
                                            )
                                          : sessioncard(
                                              imageurl: 'assets/images/1.jpg',
                                              currentcard: completed_container(
                                                session: 0,
                                              )),
                                      content: Card()),
                                  Step(
                                      state: currentstep >= 1
                                          ? StepState.complete
                                          : StepState.disabled,
                                      isActive: currentstep >= 1,
                                      title: currentstep == 1
                                          ? sessioncard(
                                              imageurl: 'assets/images/2.jpg',
                                              currentcard: current_container(
                                                session: 1,
                                              ))
                                          : currentstep > 1
                                              ? sessioncard(
                                                  currentcard:
                                                      completed_container(
                                                          session: 1),
                                                  imageurl:
                                                      "assets/images/2.jpg")
                                              : sessioncard(
                                                  currentcard: next_container(
                                                    session: 1,
                                                  ),
                                                  imageurl:
                                                      'assets/images/2.jpg'),
                                      content: Container()),
                                  Step(
                                      state: currentstep >= 2
                                          ? StepState.complete
                                          : StepState.disabled,
                                      isActive: currentstep >= 2,
                                      title: sessioncard(
                                          currentcard: next_container(
                                            session: 2,
                                          ),
                                          imageurl: 'assets/images/3.jpg'),
                                      content: Container())
                                ],
                                onStepTapped: (value) {
                                  setState(() {
                                    currentstep = value;
                                  });
                                },
                                onStepContinue: () {
                                  if (currentstep == 2) {
                                    // currentstep = 0;
                                    print('last');
                                  } else {
                                    setState(() {
                                      currentstep++;
                                    });
                                    laststep++;
                                  }
                                },
                                onStepCancel: currentstep == 0
                                    ? null
                                    : () {
                                        setState(() {
                                          currentstep--;
                                        });
                                      },
                                // onStepCancel: currentstep == 0
                                //     ? null
                                //     : () {
                                //         setState(() {
                                //           currentstep--;
                                //         });
                                //       },
                              ),
                            ),
                            data: Theme.of(context).copyWith(
                              colorScheme:
                                  ColorScheme.light(primary: Colors.indigo),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .1,
                              top: MediaQuery.of(context).size.height * .5),
                          child: GFButton(
                            padding: EdgeInsets.only(right: 70, left: 70),
                            icon: Icon(Icons.send, color: Colors.white),
                            color: Color.fromARGB(255, 45, 71, 218),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(resultpage.routename);
                            },
                            text: "  Start Session   ",
                            textStyle:
                                TextStyle(fontSize: 20, color: Colors.white),
                            size: 50,
                            shape: GFButtonShape.pills,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,

          fixedColor: Color.fromARGB(255, 12, 12, 12),
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 15,
          //selectedItemColor: Colors.greenAccent,
          unselectedFontSize: 15,
          backgroundColor: Color.fromARGB(255, 240, 239, 239),
          unselectedIconTheme: IconThemeData(
              color: Color.fromARGB(255, 163, 162, 162), size: 20),
          unselectedItemColor: Color.fromARGB(255, 134, 128, 128),
          selectedIconTheme:
              IconThemeData(color: Color.fromARGB(255, 76, 77, 76), size: 35),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.directions_walk_rounded), label: 'Rehab'),
            BottomNavigationBarItem(
                icon: Icon(Icons.compass_calibration_rounded),
                label: 'Practice'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onTap: (value) {
            showscreen(value);
          },
          currentIndex: _selected,
        ),
      ),
    );
  }
}
