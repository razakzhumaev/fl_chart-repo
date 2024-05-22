import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CustomGridLinesChart extends StatelessWidget {
  const CustomGridLinesChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Grid Lines Chart'),
      ),
      body: LineChart(
        LineChartData(
          minX: 0,
          maxX: 40,
          gridData: const FlGridData(
            show: false,
          ),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 22,
                getTitlesWidget: (value, meta) {
                  if (value.toInt() % 5 == 0) {
                    return Text('${value.toInt()}');
                  } else {
                    return Text('data');
                  }
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  if (value.toInt() % 25 == 0) {
                    return Text('${value.toInt()}');
                  } else {
                    return Text('data');
                  }
                },
                reservedSize: 30,
              ),
            ),
          ),
          borderData: FlBorderData(
            show: true,
          ),
          lineBarsData: [
            LineChartBarData(
              spots: const [
                FlSpot(0.3, 200),
                FlSpot(1.9, 900),
              ],
              color: Colors.pink,
              barWidth: 5,
            ),
          ],
        ),
      ),
    );
  }
}
