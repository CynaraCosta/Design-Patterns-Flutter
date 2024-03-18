import 'package:desing_patterns_flutter/patterns/builder/card_builder.dart';
import 'package:desing_patterns_flutter/patterns/builder/card_director.dart';
import 'package:desing_patterns_flutter/patterns/builder/card_new_order_builder.dart';
import 'package:desing_patterns_flutter/patterns/builder/card_order_builder.dart';
import 'package:desing_patterns_flutter/patterns/builder/json/new_order_card.dart';
import 'package:desing_patterns_flutter/patterns/builder/json/order_card.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_response_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final CardBuilder newOrderBuilder = CardNewOrderBuilder();
    final CardDirector newOrderDirector = CardDirector(newOrderBuilder);

    final CardBuilder orderBuilder = CardOrderBuilder();
    final CardDirector orderDirector = CardDirector(orderBuilder);

    final json1 = CardResponseModel.fromJson(newOrderJson);
    final json2 = CardResponseModel.fromJson(orderCard);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
          child: Column(
        children: [
          newOrderDirector.build(json1),
          const SizedBox(height: 24),
          orderDirector.build(json2),
        ],
      )),
    );
  }
}

