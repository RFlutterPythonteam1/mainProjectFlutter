
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:mainproject/cdata.dart';
import 'package:mainproject/developer_series.dart';

class DeveloperChart extends StatelessWidget {
  final List<DeveloperSeries> data;

  const DeveloperChart({Key? key, required this.data}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    List<charts.Series<DeveloperSeries, String>> series = [
      charts.Series(
          id: "developers",
          data: data,
          
          // x-axis
          domainFn: (DeveloperSeries series, _) => series.distributor.toString(),
          // y-axis
          measureFn: (DeveloperSeries series, _) => series.cnt,
          // individual color
          colorFn: (DeveloperSeries series, _) => series.barColor)
    ];
    // return charts.BarChart(series, animate: true); // Version 1
    return SizedBox(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(
                  Cdata.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: charts.BarChart(
                    series,
                    domainAxis: const charts.OrdinalAxisSpec(
                      renderSpec: charts.SmallTickRendererSpec(
                        labelStyle: charts.TextStyleSpec(
                          fontSize: 10,
                          
                        )
                      )
                    ),
                    animationDuration: const Duration(seconds: 1),
                    animate: true,
                    vertical: false,
                    
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
