import 'package:blinking_text/blinking_text.dart';
import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mainproject/cdata.dart';
import 'package:mainproject/developer_chart.dart';
import 'package:mainproject/developer_series.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/services.dart' show rootBundle;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<DeveloperSeries> data = [];
  List<List<dynamic>> csvData = [];
  late List csvHeadingRow;
  late List csvRows;
  bool ischart = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 119, 192, 168),
        title: const Text('Bar Chart'),
      ),
      body: Center(
        child: Column(
          children: [
            csvData.isEmpty
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      height: 500,
                      child: const Center(
                        child: BlinkText(
                          "화면 준비중...\n원하시는 버튼을 눌러주세요",
                          style: TextStyle(fontSize: 25),
                          duration: Duration(seconds: 3),
                          beginColor: Colors.black,
                          endColor: Colors.white,
                        ),
                      ),
                    ),
                  )
                : ischart
                    ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DeveloperChart(data: data),
                    )
                    : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 500,
                          child: SingleChildScrollView(
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: _getDataTable()))),
                    ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("차트보기"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    _loadCSVChart("csv/distributor_forgraph.csv", 1);
                  },
                  style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 119, 192, 168), // Background color
                ),
                  child: const Text("배급사-횟수"),
                ),
                const SizedBox(
                  width: 3,
                ),
                ElevatedButton(
                  onPressed: () {
                    _loadCSVChart("csv/distributor_forgraph.csv", 2);
                  },
                  style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 119, 192, 168), // Background color
                ),
                  child: const Text("배급사-누적관객수"),
                ),
                const SizedBox(
                  width: 3,
                ),
                ElevatedButton(
                  onPressed: () {
                    _loadCSVChart("csv/distributor_forgraph.csv", 3);
                  },
                  style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 119, 192, 168), // Background color
                ),
                  child: const Text("배급사-평균관객수"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    _loadCSVChart("csv/genre_forgraph.csv", 1);
                  },
                  style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 119, 192, 168), // Background color
                ),
                  child: const Text("장르-누적관객수"),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    _loadCSVChart("csv/genre_forgraph.csv", 2);
                  },
                  style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 119, 192, 168), // Background color
                ),
                  child: const Text("장르-횟수"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("데이터프레임보기"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    _loadCSVDF("csv/distributor_forgraph.csv");
                  },
                  style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 119, 192, 168), // Background color
                ),
                  child: const Text("배급사"),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    _loadCSVDF("csv/genre_forgraph.csv");
                  },
                  style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 119, 192, 168), // Background color
                ),
                  child: const Text("장르"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _loadCSVChart(String path, int colNum) async {
    final rawData = await rootBundle.loadString(path);
    List<List<dynamic>> listData = const CsvToListConverter().convert(rawData);
    setState(() {
      ischart = true;
      csvData = listData;
      Cdata.title = csvData[0][colNum];
      csvData.removeAt(0);
      data.clear();
      for (int i = 0; i < csvData.length; i++) {
        data.add(DeveloperSeries(
          distributor: csvData[i][0],
          cnt: csvData[i][colNum],
          barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 148, 176, 227),),
        ));
      }
    });
  }

  void _loadCSVDF(String path) async {
    final _rawData = await rootBundle.loadString(path);
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    setState(() {
      ischart = false;
      csvData = _listData;
      csvHeadingRow = csvData[0].toList();
      csvData.removeAt(0);
      csvRows = csvData.toList();
    });
  }

  Widget _getDataTable() {
    return DataTable(
      columns: _getColumns(),
      rows: _getRows(),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      dataRowColor: MaterialStateColor.resolveWith((states) => Colors.white),
      headingRowColor: MaterialStateColor.resolveWith((states) => Colors.grey),
    );
  }

  List<DataColumn> _getColumns() {
    List<DataColumn> dataColumn = [];
    for (var i in csvHeadingRow) {
      dataColumn.add(DataColumn(
          label: Text(
            i,
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          tooltip: i));
    }
    return dataColumn;
  }

  List<DataRow> _getRows() {
    List<DataRow> dataRow = [];
    for (var i = 0; i < csvRows.length; i++) {
      List<DataCell> cells = [];
      for (var j = 0; j < csvRows[i].length; j++) {
        cells.add(DataCell(Text(csvRows[i][j].toString())));
      }
      dataRow.add(DataRow(cells: cells));
    }
    return dataRow;
  }
}
