import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);
  final double height;
  final double width;
  static const routenmae = 'nwewro';
  // final String title ;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scrollDirection = Axis.horizontal;
  Future _scrollToIndex() async {
    await controller.scrollToIndex(loc++,
        preferPosition: AutoScrollPosition.begin);
  }

  AutoScrollController controller;
  List<List<int>> randomList;
  int loc = 0;
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
      color: Colors.white,
      width: widget.width,
      height: widget.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Range of motion'),
          Row(
            children: [
              Container(
                height: 150,
                width: 60,
                color: Colors.pink,
                child:
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              ),
              Container(
                color: Colors.red,
                width: 250,
                height: 150,
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
                              color: Color.fromARGB(255, 177, 184, 189),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          height: 150,
                          width: 100,
                          margin: EdgeInsets.all(10),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Set 1"),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [Text('Min'), Text('64°')],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [Text('Max'), Text('64°')],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [Text('avg'), Text('64°')],
                                ),
                              ],
                            ),
                          ),
                        )),
                        highlightColor: Colors.black.withOpacity(0.1),
                      );
                    }),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 60,
                color: Colors.pink,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
