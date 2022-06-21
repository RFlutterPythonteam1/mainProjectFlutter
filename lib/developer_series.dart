import 'package:charts_flutter/flutter.dart' as charts;

class DeveloperSeries {
  late String distributor;
  late int cnt;
  late charts.Color barColor;

  DeveloperSeries({
    required this.distributor,
    required this.cnt,
    required this.barColor,
  });
}
