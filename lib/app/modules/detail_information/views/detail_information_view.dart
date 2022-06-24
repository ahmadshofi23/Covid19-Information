import 'package:covid19_information/app/data/models/covid19_model.dart';
import 'package:covid19_information/app/modules/detail_information/views/Indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/colors_shared.dart';
import '../controllers/detail_information_controller.dart';

class DetailInformationView extends GetView<DetailInformationController> {
  DetailInformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CovidModels covidModels = Get.arguments;
    var persen1 = 0;
    var persen = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Information ${covidModels.key}'),
        backgroundColor: redColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: Get.height * 0.01,
          horizontal: Get.width * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Table(
              border: TableBorder.all(),
              columnWidths: {
                0: FlexColumnWidth(),
                1: FlexColumnWidth(),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: [
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Container(
                          color: redColor,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: Get.height * 0.02,
                            ),
                            child: Center(
                              child: Text(
                                "Nama Kota",
                                style: whiteTextStyle.copyWith(
                                    fontSize: Get.width * 0.05),
                              ),
                            ),
                          ),
                        )),
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Container(
                          color: redColor,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: Get.height * 0.02,
                            ),
                            child: Center(
                              child: Text(
                                "${covidModels.key}",
                                style: whiteTextStyle.copyWith(
                                    fontSize: Get.width * 0.05),
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Container(
                          color: redColor,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: Get.height * 0.02,
                            ),
                            child: Center(
                              child: Text(
                                "Jumlah Kasus",
                                style: whiteTextStyle.copyWith(
                                    fontSize: Get.width * 0.05),
                              ),
                            ),
                          ),
                        )),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Container(
                        color: redColor,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: Get.height * 0.02,
                          ),
                          child: Center(
                            child: Text(
                              "${covidModels.jumlahKasus}",
                              style: whiteTextStyle.copyWith(
                                  fontSize: Get.width * 0.05),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Container(
                          color: redColor,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: Get.height * 0.02,
                            ),
                            child: Center(
                              child: Text(
                                "Jumlah Sembuh",
                                style: whiteTextStyle.copyWith(
                                    fontSize: Get.width * 0.05),
                              ),
                            ),
                          ),
                        )),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Container(
                        color: redColor,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: Get.height * 0.02,
                          ),
                          child: Center(
                            child: Text(
                              "${covidModels.jumlahSembuh}",
                              style: whiteTextStyle.copyWith(
                                  fontSize: Get.width * 0.05),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Container(
                          color: redColor,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: Get.height * 0.02,
                            ),
                            child: Center(
                              child: Text(
                                "Jumlah Meninggal",
                                style: whiteTextStyle.copyWith(
                                    fontSize: Get.width * 0.05),
                              ),
                            ),
                          ),
                        )),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Container(
                        color: redColor,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: Get.height * 0.02,
                          ),
                          child: Center(
                            child: Text(
                              "${covidModels.jumlahMeninggal}",
                              style: whiteTextStyle.copyWith(
                                  fontSize: Get.width * 0.05),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Container(
                          color: redColor,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: Get.height * 0.02,
                            ),
                            child: Center(
                              child: Text(
                                "Jumlah Dirawat",
                                style: whiteTextStyle.copyWith(
                                    fontSize: Get.width * 0.05),
                              ),
                            ),
                          ),
                        )),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Container(
                        color: redColor,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: Get.height * 0.02,
                          ),
                          child: Center(
                            child: Text(
                              "${covidModels.jumlahDirawat}",
                              style: whiteTextStyle.copyWith(
                                  fontSize: Get.width * 0.05),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //jenis kelamin
            SizedBox(height: Get.width * 0.02),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jenis Kelamin",
                    style: TextStyle(fontSize: Get.width * 0.08),
                  ),
                  SizedBox(height: Get.height * 0.02),
                  AspectRatio(
                    aspectRatio: 1.3,
                    child: Card(
                      // color: redColor,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Indicator(
                                  color: femaleColor,
                                  text: "Perempuan",
                                  isSquare: true),
                              Indicator(
                                  color: maleColor,
                                  text: "Laki-Laki",
                                  isSquare: true),
                            ],
                          ),
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: PieChart(
                                PieChartData(
                                  sectionsSpace: 0,
                                  centerSpaceRadius: 40,
                                  sections: List.generate(
                                    2,
                                    (index) {
                                      persen = covidModels
                                              .jenisKelamin![index].docCount!
                                              .toInt() +
                                          persen;
                                      return PieChartSectionData(
                                        color: index == 0
                                            ? maleColor
                                            : femaleColor,
                                        value: covidModels
                                            .jenisKelamin![index].docCount!
                                            .toDouble(),
                                        title:
                                            '${covidModels.jenisKelamin![index].docCount!.toInt()}',
                                        radius: 50,
                                        titleStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: const Color(0xffffffff)),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
