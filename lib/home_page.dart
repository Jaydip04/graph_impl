import 'package:flutter/material.dart';
import 'chart/BarChartSample1.dart';
import 'chart/BarChartSample2.dart';
import 'chart/LineChartSample10.dart';
import 'chart/PieChartSample3.dart';
import 'chart/LineChartSample2.dart';
import 'chart/PieChartSample2.dart';
import 'chart/LineChartSample1.dart';
import 'chart/RadarChartSample1.dart';
import 'chart/ScatterChartSample1.dart';
import 'chart/ScatterChartSample2.dart';
import 'constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.purpleLight,
        title: const Text("Chart Demo",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            commonPadding("1. Bar Chart"),
            BarChartSample2(),
            const SizedBox(height: 10,),
            commonPadding("2. Line Chart"),
            const LineChartSample1(),
            const SizedBox(height: 10,),
            commonPadding("3. Line Chart 2"),
            const LineChartSample2(),
            const SizedBox(height: 10,),
            commonPadding("4. Pie Chart"),
            const PieChartSample2(),
            const SizedBox(height: 10,),
            commonPadding("5. Pie Chart 2"),
            const PieChartSample3(),
            const SizedBox(height: 10,),
            commonPadding("6. Scatter Chart"),
            ScatterChartSample1(),
            const SizedBox(height: 10,),
            commonPadding("7. Radar Chart"),
            RadarChartSample1(),
            const SizedBox(height: 10,),
            commonPadding("8. Bar Chart 2"),
            BarChartSample1(),
            const SizedBox(height: 10,),
            commonPadding("9. Line Chart 3"),
            const LineChartSample10(),
            const SizedBox(height: 10,),
            commonPadding("10.  Scatter Chart 2"),
            const ScatterChartSample2(),
          ],
        ),
      ),
    );
  }
  Padding commonPadding(name){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Text(name,style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
    );
  }
}
