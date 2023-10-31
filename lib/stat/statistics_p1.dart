import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class statistics_p1 extends StatefulWidget {
  @override
  _statistics_p1 createState() => _statistics_p1();
}

class _statistics_p1 extends State<statistics_p1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BrainTap'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200, // Adjust the height as needed
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  barGroups: [
                    BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 5)]),
                    BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 8)]),
                    BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 6)]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
