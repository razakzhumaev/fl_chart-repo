import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomDualYAxisChart extends StatelessWidget {
  const CustomDualYAxisChart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> customNumbers = [
      609,
      435,
      348,
      261,
      218,
      174,
      131,
      87,
      44,
      35,
      26,
      22
    ];
    final List<int> customNumbers2 = [
      470,
      336,
      268,
      201,
      168,
      134,
      101,
      67,
      34,
      27,
      20,
      17
    ];

    return Center(
      child: SizedBox(
        height: 600,
        width: 700,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            LineChart(
              LineChartData(
                lineTouchData: LineTouchData(
                  distanceCalculator:
                      (Offset touchPoint, Offset spotPixelCoordinates) =>
                          (touchPoint - spotPixelCoordinates).distance,
                  touchTooltipData: LineTouchTooltipData(
                      getTooltipItems: (List<LineBarSpot> spots) {
                    return spots.asMap().entries.map((e) {
                      int index = e.key;
                      if (index != 0) {
                        return null;
                      }
                      LineBarSpot spot = e.value;
                      return LineTooltipItem(
                        spot.y.toString(),
                        TextStyle(
                          color: spot.bar.gradient?.colors.first ??
                              spot.bar.color ??
                              Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      );
                    }).toList();
                  }),
                ),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true, // показывает числа Y axis
                      reservedSize: 40,
                      interval: 10,
                      getTitlesWidget: (value, meta) {
                        const style = TextStyle(
                          color: Color(0xff68737d),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        );
                        final String text;
                        switch (value.toInt()) {
                          case 50:
                            text = '50';
                            break;
                          case 60:
                            text = '60';
                            break;
                          case 80:
                            text = '80';
                            break;
                          case 100:
                            text = '100';
                            break;
                          case 200:
                            text = '200';
                            break;
                          case 300:
                            text = '300';
                            break;
                          case 400:
                            text = '400';
                            break;
                          case 500:
                            text = '500';
                            break;
                          case 600:
                            text = '600';
                            break;
                          case 800:
                            text = '800';
                            break;
                          case 1000:
                            text = '1000';
                            break;
                          case 1400:
                            text = '1400';
                            break;
                          default:
                            return const SizedBox();
                        }
                        return SideTitleWidget(
                          axisSide: meta.axisSide,
                          child: Text(
                            text,
                            style: style,
                          ),
                        );
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
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        const style = TextStyle(
                          color: Color(0xff68737d),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        );
                        String text;
                        switch (value.toDouble()) {
                          case 0.3:
                            text = '0.3';
                            break;
                          case 0.4:
                            text = '0.4';
                            break;
                          case 0.5:
                            text = '0.5';
                            break;
                          case 0.6:
                            text = '0.6';
                            break;
                          case 0.7:
                            text = '0.7';
                            break;
                          case 0.8:
                            text = '0.8';
                            break;
                          case 0.9:
                            text = '0.9';
                            break;
                          case 1:
                            text = '1';
                            break;
                          case 2:
                            text = '2';
                            break;
                          case 2.5:
                            text = '2.5';
                            break;
                          default:
                            return const SizedBox();
                        }
                        return SideTitleWidget(
                          axisSide: meta.axisSide,
                          child: Text(
                            text,
                            style: style,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                extraLinesData: ExtraLinesData(
                  horizontalLines: [
                    HorizontalLine(
                      y: 50,
                      color: Colors.grey,
                      strokeWidth: 1,
                      // dashArray: [5, 5],// делать из линий штрихи(дополнение)
                    ),
                    HorizontalLine(
                      y: 200,
                      color: Colors.grey,
                      strokeWidth: 1,
                    ),
                    HorizontalLine(
                      y: 300,
                      color: Colors.grey,
                      strokeWidth: 1,
                    ),
                    HorizontalLine(
                      y: 400,
                      color: Colors.grey,
                      strokeWidth: 1,
                    ),
                    HorizontalLine(
                      y: 500,
                      color: Colors.grey,
                      strokeWidth: 1,
                    ),
                    HorizontalLine(
                      y: 600,
                      color: Colors.grey,
                      strokeWidth: 1,
                    ),
                    HorizontalLine(
                      y: 800,
                      color: Colors.grey,
                      strokeWidth: 1,
                    ),
                    HorizontalLine(
                      y: 1000,
                      color: Colors.grey,
                      strokeWidth: 1,
                    ),
                  ],
                  verticalLines: [
                    VerticalLine(
                      x: 0.3,
                      color: Colors.grey,
                      strokeWidth: 1,
                    ),
                    VerticalLine(
                      x: 0.4,
                      color: Colors.grey,
                      strokeWidth: 1,
                    ),
                    VerticalLine(
                      x: 0.5,
                      color: Colors.grey,
                      strokeWidth: 1,
                    ),
                    VerticalLine(
                      x: 0.6,
                      color: Colors.grey,
                      strokeWidth: 1,
                    ),
                    VerticalLine(
                      x: 0.7,
                      color: Colors.grey,
                      strokeWidth: 1,
                    ),
                    VerticalLine(
                      x: 0.9,
                      color: Colors.grey,
                      strokeWidth: 1,
                    ),
                    VerticalLine(
                      x: 1,
                      color: Colors.grey,
                      strokeWidth: 1,
                    ),
                    VerticalLine(
                      x: 1.5,
                      color: Colors.grey,
                      strokeWidth: 1,
                    ),
                    VerticalLine(
                      x: 2,
                      color: Colors.grey,
                      strokeWidth: 1,
                    ),
                  ],
                ),
                gridData: const FlGridData(
                  show: false, // устанавливает сетки для графика
                  drawVerticalLine: true,
                  drawHorizontalLine: true,
                  verticalInterval: 0.4,
                ),
                borderData: FlBorderData(
                  show: true,
                  border: const Border(
                    left: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                    bottom: BorderSide(
                      width: 3,
                    ),
                    top: BorderSide(
                      color: Colors.grey,
                    ),
                    right: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                minX: 0,
                maxX: 2.5,
                minY: 0,
                maxY: 1400,
                lineBarsData: [
                  buildLineChartBarData(
                    spots: const [
                      FlSpot(0.3, 200),
                      FlSpot(1.9, 900),
                    ],
                    color: Colors.blue,
                  ),
                  buildLineChartBarData(
                    spots: const [
                      FlSpot(1.5, 0),
                      FlSpot(1.2, 140),
                      FlSpot(0.8, 210),
                      FlSpot(0.3, 200),
                    ],
                    color: Colors.red,
                  ),
                  buildLineChartBarData(
                    spots: const [
                      FlSpot(2.5, 500),
                      FlSpot(1.5, 0),
                    ],
                    color: Colors.green,
                  ),
                  buildLineChartBarData(
                    spots: const [
                      FlSpot(1.7, 100),
                      FlSpot(1.2, 300),
                      FlSpot(0.7, 370),
                    ],
                    color: Colors.black,
                  ),
                  buildLineChartBarData(
                    spots: const [
                      FlSpot(1.9, 215),
                      FlSpot(1.5, 400),
                      FlSpot(1.0, 500),
                    ],
                    color: Colors.yellow,
                  ),
                  buildLineChartBarData(
                    spots: const [
                      FlSpot(2.1, 300),
                      FlSpot(1.7, 500),
                      FlSpot(1.25, 610),
                    ],
                    color: Colors.purple,
                  ),
                  buildLineChartBarData(
                    spots: const [
                      FlSpot(2.3, 400),
                      FlSpot(1.9, 600),
                      FlSpot(1.45, 700),
                    ],
                    color: Colors.orange,
                  ),
                  buildLineChartBarData(
                    spots: const [
                      FlSpot(2.5, 500),
                      FlSpot(2.1, 700),
                      FlSpot(1.68, 800),
                    ],
                    color: Colors.pink,
                  ),
                  buildLineChartBarData(
                    spots: const [
                      FlSpot(1.3, 100),
                      FlSpot(2.5, 680),
                    ],
                    color: Colors.grey,
                  ),
                  buildLineChartBarData(
                    spots: const [
                      FlSpot(1.0, 180),
                      FlSpot(2.3, 800),
                    ],
                    color: Colors.brown,
                  ),
                  buildLineChartBarData(
                    spots: const [
                      FlSpot(0.7, 210),
                      FlSpot(2.1, 850),
                    ],
                    color: Colors.cyan,
                  ),
                ],
              ),
            ),
            Positioned(
              left: -45,
              top: -8,
              bottom: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  12,
                  (index) {
                    return Text(
                      customNumbers[index].toString(),
                      style: const TextStyle(
                        color: Color(0xff68737d),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    );
                  },
                ),
              ),
            ),
            Positioned(
              left: -100,
              top: -8,
              bottom: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  12,
                  (index) {
                    return Text(
                      customNumbers2[index].toString(),
                      style: const TextStyle(
                        color: Color(0xff68737d),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    );
                  },
                ),
              ),
            ),
            const Positioned(
              left: -140,
              top: -8,
              bottom: 20,
              child: Text('Pv,Па'),
            ),
            Positioned(
              left: -70,
              top: 0,
              bottom: 25,
              child: Container(
                width: 3,
                color: Colors.black,
              ),
            ),
            Positioned(
              left: -15,
              top: 0,
              bottom: 25,
              child: Container(
                width: 3,
                color: Colors.black,
              ),
            ),
            const Positioned(
              top: -20,
              right: 5,
              child: Text(
                'Дк=0,9Дн',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Positioned(
              bottom: 0,
              right: -50,
              child: Text(
                'Q,тыс.м3/ч',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Positioned(
              bottom: 0,
              left: -100,
              child: Text(
                '600 C 400 C',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            buildTextWidget(x: 0.3, y: 200, text: '0.3, 200'),
            buildTextWidget(x: 1.9, y: 900, text: '1.9, 900'),
            buildTextWidget(x: 1.2, y: 140, text: '1.2, 140'),
            buildTextWidget(x: 0.8, y: 210, text: '0.8, 210'),
            buildTextWidget(x: 1.5, y: 0, text: '1.5, 0'),
            buildTextWidget(x: 2.5, y: 500, text: '2.5, 500'),
            buildTextWidget(x: 1.7, y: 100, text: '1.7, 100'),
            buildTextWidget(x: 1.2, y: 300, text: '1.2, 300'),
            buildTextWidget(x: 0.7, y: 370, text: '0.7, 370'),
            buildTextWidget(x: 1.9, y: 215, text: '1.9, 215'),
            buildTextWidget(x: 1.5, y: 400, text: '1.5, 400'),
            buildTextWidget(x: 1.0, y: 500, text: '1.0, 500'),
            buildTextWidget(x: 2.1, y: 300, text: '2.1, 300'),
            buildTextWidget(x: 1.25, y: 610, text: '1.25, 610'),
            buildTextWidget(x: 2.3, y: 400, text: '2.3, 400'),
            buildTextWidget(x: 1.45, y: 700, text: '1.45, 700'),
            buildTextWidget(x: 2.1, y: 700, text: '2.1, 700'),
            buildTextWidget(x: 1.68, y: 800, text: '1.68, 800'),
            buildTextWidget(x: 1.3, y: 100, text: '1.3, 100'),
            buildTextWidget(x: 2.5, y: 680, text: '2.5, 680'),
            buildTextWidget(x: 1.0, y: 180, text: '1.0, 180'),
            buildTextWidget(x: 2.3, y: 800, text: '2.3, 800'),
            buildTextWidget(x: 0.7, y: 210, text: '0.7, 210'),
            buildTextWidget(x: 2.1, y: 850, text: '2.1, 850'),
          ],
        ),
      ),
    );
  }

  LineChartBarData buildLineChartBarData({
    required List<FlSpot> spots,
    required Color color,
  }) {
    return LineChartBarData(
      spots: spots,
      isCurved: true,
      barWidth: 2,
      color: color,
      belowBarData: BarAreaData(
        show: true, // показывает градиет или выключает
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.1),
            color.withOpacity(0.1),
          ],
        ),
      ),
      dotData: const FlDotData(
        show: false,
      ), // убирает или оставляет точки пересечения
    );
  }

  Positioned buildTextWidget({
    required double x,
    required double y,
    required String text,
  }) {
    const chartWidth = 700;
    const chartHeight = 600;
    const scaleX = chartWidth / 2.5;
    const scaleY = chartHeight / 1400;

    return Positioned(
      left: x * scaleX,
      top: chartHeight -
          (y * scaleY) -
          30, // регулировка текста расположенного над точками пересечения
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
      ),
    );
  }
}

// class CustomLineTooltip extends StatelessWidget {
//   final List<LineBarSpot> spots;

//   const CustomLineTooltip(this.spots, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: spots.map((spot) {
//         return Container(
//           margin: const EdgeInsets.symmetric(vertical: 2),
//           padding: const EdgeInsets.all(6),
//           decoration: BoxDecoration(
//             color: Colors.white.withOpacity(0.8),
//             borderRadius: BorderRadius.circular(4),
//           ),
//           child: Text(
//             '(${spot.x}, ${spot.y})',
//             style: const TextStyle(
//                 color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
//           ),
//         );
//       }).toList(),
//     );
//   }
// }
