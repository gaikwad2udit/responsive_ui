import 'package:clone_app/chart.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class dropdowncard extends StatefulWidget {
  const dropdowncard({
    Key key,
  }) : super(key: key);

  @override
  State<dropdowncard> createState() => _dropdowncardState();
}

class _dropdowncardState extends State<dropdowncard> {
  final scrollDirection = Axis.horizontal;
  int location = 1;
  AutoScrollController controller;

  Future _scrollToIndexforward() async {
    if (location < 4) {
      await controller.scrollToIndex(location++,
          preferPosition: AutoScrollPosition.begin);
    }
  }

  Future _scrollToIndexback() async {
    if (location > 0) {
      await controller.scrollToIndex(location--,
          preferPosition: AutoScrollPosition.begin);
    }
  }

  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.right),
        axis: scrollDirection);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      color: Color.fromARGB(255, 129, 89, 89),
      child: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.white,
                child: testing(),
              )),
          Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                //color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width * .08,
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: IconButton(
                          onPressed: () {
                            _scrollToIndexback();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          )),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width * .7,
                            height: 120,
                            child: ListView(
                              scrollDirection: scrollDirection,
                              controller: controller,
                              children: <Widget>[
                                ...List.generate(5, (index) {
                                  return AutoScrollTag(
                                    key: ValueKey(index),
                                    controller: controller,
                                    index: index,
                                    child: Center(
                                        child: Container(
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 177, 184, 189),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12))),
                                      height: 80,
                                      width: 80,
                                      margin: EdgeInsets.all(10),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Set ${index + 1}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Min',
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                                Text(
                                                  '64°',
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Max',
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                                Text(
                                                  '64°',
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'avg',
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                                Text(
                                                  '64°',
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )),
                                    highlightColor:
                                        Colors.black.withOpacity(0.1),
                                  );
                                }),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          "Range of Motion",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width * .08,
                      color: Colors.white,
                      child: IconButton(
                          onPressed: () {
                            _scrollToIndexforward();
                          },
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
