import 'package:flutter/material.dart';
import 'package:flutter_graphs/widget/example1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('fl_chart'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body:const Padding(
        padding:  EdgeInsets.only(left: 50),
        child: CustomDualYAxisChart(),
      ),
    );
  }
}
