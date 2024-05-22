import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() {
    return FlTitlesData(
      show: true,
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 40,
          interval: 1,
          getTitlesWidget: (value, meta) {
            switch (value.toInt()) {
              case 2:
                return const Text(
                  'Razak',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                );
              case 5:
                return const Text(
                  'Dastan',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                );
              default:
                return const Text('');
            }
          },
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 40,
          getTitlesWidget: (value, meta) {
            switch (value) {
              case 1:
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    '10k',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                );
              case 3:
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    '30k',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                );
              case 5:
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '50k',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                );
              default:
                return const Text('');
            }
          },
        ),
      ),
      rightTitles: const AxisTitles(
        sideTitles: SideTitles(
          showTitles: false,
        ),
      ),
      topTitles: const AxisTitles(
        sideTitles: SideTitles(
          showTitles: false,
        ),
      ),
    );
  }
}
