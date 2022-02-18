// @dart=2.8

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'dart:math';

class testing extends StatefulWidget {
  // const testing({Key? key}) : super(key: key);
  static const routenaem = 'tesing';

  @override
  State<testing> createState() => _testingState();
}

class _testingState extends State<testing> {
  List<charts.Series> serieslist;

  List<charts.Series<exercise, String>> createrandom() {
    final random = Random();
    final exercisedata = [
      exercise(reps: 6, sets: 'set 1'),
      exercise(reps: 8, sets: 'set 2'),
      exercise(reps: 10, sets: 'set 3'),
    ];
    final exercisedata2 = [
      exercise(reps: 9, sets: 'set 1'),
      exercise(reps: 7, sets: 'set 2'),
      exercise(reps: 4, sets: 'set 3'),
    ];
    return [
      charts.Series<exercise, String>(
        id: 'exercise',
        domainFn: (exercise ex, _) => ex.sets,
        measureFn: (exercise ex, _) => ex.reps,
        data: exercisedata,
        fillColorFn: (exercise ex, _) {
          return charts.MaterialPalette.cyan.shadeDefault;
        },
        labelAccessorFn: (exercise ex, _) => '${ex.reps.toString()}',
        seriesColor: charts.MaterialPalette.blue.shadeDefault,
      ),
      charts.Series<exercise, String>(
        id: 'exercise2',
        domainFn: (exercise ex, _) => ex.sets,
        measureFn: (exercise ex, _) => ex.reps,
        data: exercisedata2,
        fillColorFn: (exercise ex, _) {
          return charts.MaterialPalette.red.shadeDefault;
        },
        labelAccessorFn: (exercise ex, _) => '${ex.reps.toString()}',
      ),
    ];
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    serieslist = createrandom();
  }

  barChart() {
    return charts.BarChart(
      serieslist,
      animate: true,
      vertical: true,
      barRendererDecorator: charts.BarLabelDecorator<String>(
          labelAnchor: charts.BarLabelAnchor.start,
          insideLabelStyleSpec: charts.TextStyleSpec(
            fontSize: 17,
            color: charts.MaterialPalette.white,
          )),
      domainAxis: new charts.OrdinalAxisSpec(),
      behaviors: [
        charts.RangeAnnotation([
          charts.LineAnnotationSegment(
              10, charts.RangeAnnotationAxisType.measure,
              color: charts.MaterialPalette.white, strokeWidthPx: .5),
          charts.LineAnnotationSegment(
              8, charts.RangeAnnotationAxisType.measure,
              color: charts.MaterialPalette.gray.shade300,
              strokeWidthPx: .5,
              middleLabel: '8',
              labelPosition: charts.AnnotationLabelPosition.margin,
              labelAnchor: charts.AnnotationLabelAnchor.start),
          charts.LineAnnotationSegment(
              6, charts.RangeAnnotationAxisType.measure,
              color: charts.MaterialPalette.gray.shade400,
              strokeWidthPx: .5,
              middleLabel: '6',
              labelPosition: charts.AnnotationLabelPosition.margin,
              labelAnchor: charts.AnnotationLabelAnchor.start),
          charts.LineAnnotationSegment(
              4, charts.RangeAnnotationAxisType.measure,
              color: charts.MaterialPalette.black,
              strokeWidthPx: .5,
              middleLabel: '4',
              labelPosition: charts.AnnotationLabelPosition.margin,
              labelAnchor: charts.AnnotationLabelAnchor.start),
          charts.LineAnnotationSegment(
              2, charts.RangeAnnotationAxisType.measure,
              color: charts.MaterialPalette.gray.shade400,
              strokeWidthPx: .5,
              middleLabel: '2',
              labelPosition: charts.AnnotationLabelPosition.margin,
              labelAnchor: charts.AnnotationLabelAnchor.start)
        ]),
        charts.ChartTitle('Reps',
            titleOutsideJustification:
                charts.OutsideJustification.middleDrawArea,
            behaviorPosition: charts.BehaviorPosition.start),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .18,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: barChart(),
      ),
    );
  }
}

class exercise {
  final int reps;
  final String sets;
  exercise({
    @required this.reps,
    @required this.sets,
  });
}
