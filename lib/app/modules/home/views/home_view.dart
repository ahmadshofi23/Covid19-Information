import 'package:covid19_information/app/routes/app_pages.dart';
import 'package:covid19_information/app/utils/colors_shared.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/models/covid19_model.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: redColor,
          title: const Text('Covid 19 Information'),
          centerTitle: true,
        ),
        body: FutureBuilder<List<CovidModels>>(
          future: controller.getAllDataCovid(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (!snapshot.hasData) {
              return const Center(
                child: Text("Tidak ada data..."),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                CovidModels covidModels = snapshot.data![index];

                return InkWell(
                  onTap: () {
                    Get.toNamed(Routes.DETAIL_INFORMATION,
                        arguments: covidModels);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      vertical: Get.height * 0.02,
                      horizontal: Get.width * 0.04,
                    ),
                    // height: 150,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        )
                      ],
                      color: orangeColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: Get.height * 0.02,
                        horizontal: Get.width * 0.02,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Provinsi : ${covidModels.key}",
                            style: whiteTextStyle.copyWith(
                              fontSize: Get.width * 0.06,
                            ),
                          ),
                          Text("Jumlah Kasus : ${covidModels.jumlahKasus}",
                              style: whiteTextStyle.copyWith(
                                fontSize: Get.width * 0.06,
                              )),
                          Text("Jumlah Sembuh : ${covidModels.jumlahSembuh}",
                              style: whiteTextStyle.copyWith(
                                fontSize: Get.width * 0.06,
                              )),
                          Text(
                              "Jumlah Meninggal : ${covidModels.jumlahMeninggal}",
                              style: whiteTextStyle.copyWith(
                                fontSize: Get.width * 0.06,
                              )),
                          Text("Jumlah Dirawat : ${covidModels.jumlahDirawat}",
                              style: whiteTextStyle.copyWith(
                                fontSize: Get.width * 0.06,
                              )),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ));
  }
}
