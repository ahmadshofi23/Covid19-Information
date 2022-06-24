// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';

import 'package:covid19_information/app/data/models/covid19_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:covid19_information/main.dart';

import 'package:http/http.dart' as http;
// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const MyApp());

//     // Verify that our counter starts at 0.
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);

//     // Tap the '+' icon and trigger a frame.
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();

//     // Verify that our counter has incremented.
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
//   });
// }

// Future<List<CovidModels>> main() async {
//   // var response = await http
//   //     .get(Uri.parse("https://data.covid19.go.id/public/api/prov.json"));
//   // List data = jsonDecode(response.body)["list_data"];
//   // // print(data);

//   Uri url = Uri.parse("https://data.covid19.go.id/public/api/prov.json");
//   var response = await http.get(url);
//   List? data = jsonDecode(response.body)["list_data"];
//   print(data);
//   return data!.map((e) => CovidModels.fromJson(e)).toList();

//   print(data);
// }
