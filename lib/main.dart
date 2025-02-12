import 'package:flutter/material.dart';
import 'package:testing_magang/currency_converter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CurrencyConverterStateful());
  }
}
