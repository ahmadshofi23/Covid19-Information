import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailInformationController extends GetxController {
  //TODO: Implement DetailInformationController

  final count = 0.obs;
  @override
  void onInit() {
    chart();
    super.onInit();
  }

  chart() {
    List<PieChartSectionData> showingSections() {
      return List.generate(4, (i) {
        // final isTouched = i == touchedIndex;
        // final fontSize = isTouched ? 25.0 : 16.0;
        // final radius = isTouched ? 60.0 : 50.0;
        switch (i) {
          case 0:
            return PieChartSectionData(
              color: const Color(0xff0293ee),
              value: 40,
              title: '40%',
              radius: 50,
              titleStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffffffff)),
            );
          case 1:
            return PieChartSectionData(
              color: const Color(0xfff8b250),
              value: 30,
              title: '30%',
              radius: 50,
              titleStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffffffff)),
            );

          default:
            throw Error();
        }
      });
    }
  }
}
