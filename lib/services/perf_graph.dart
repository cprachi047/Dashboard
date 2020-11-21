import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class Graph extends StatefulWidget {
  @override
  _GraphState createState() => _GraphState();
}

class _GraphState extends State<Graph> {

  List<charts.Series<Performance, int>> _seriesLineData;

  _generateData(){
    var lineVehicleCount=[
      new Performance(0, 25),
      new Performance(1, 50),
      new Performance(2, 150),
      new Performance(3, 100),
    ];

    var lineVehicleCount1 = [
      new Performance(0, 55),
      new Performance(1, 100),
      new Performance(2, 250),
      new Performance(3, 200),
    ];

    var lineVehicleCount2 = [
      new Performance(0, 60),
      new Performance(1, 70),
      new Performance(2, 600),
      new Performance(3, 400),
    ];

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id : 'Weekly Performance',
        data: lineVehicleCount,
        domainFn : (Performance performance, _) => performance.week,
        measureFn: (Performance performance, _) => performance.vehicles,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id : 'Weekly Performance',
        data: lineVehicleCount1,
        domainFn : (Performance performance, _) => performance.week,
        measureFn: (Performance performance, _) => performance.vehicles,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id : 'Weekly Performance',
        data: lineVehicleCount2,
        domainFn : (Performance performance, _) => performance.week,
        measureFn: (Performance performance, _) => performance.vehicles,
      ),
    );

  }

  @override
  void initState() {
    super.initState();
    _seriesLineData = List<charts.Series<Performance, int>>();
    _generateData();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          height: 15.0,
          child: Center(
            child: Column(
              children: <Widget>[
                Text('Performance'),
                Text('All Campaigns'),
              charts.LineChart(
                    _seriesLineData,
                    defaultRenderer: new charts.LineRendererConfig(
                        includeArea: true, stacked: true),
                    animate: true,
                    animationDuration: Duration(seconds: 5),
                  ),
              ],
            ),
          ),
        ),
      );

  }
}

class Performance{
  int week;
  int vehicles;

  Performance(this.week, this.vehicles);
}