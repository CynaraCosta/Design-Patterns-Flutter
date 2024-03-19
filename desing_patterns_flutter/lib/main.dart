import 'package:desing_patterns_flutter/patterns/builder/card_director.dart';
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

    final json1 = CardResponseModel.fromJson(newOrderJson);
    final json2 = CardResponseModel.fromJson(orderCard);

    final CardDirector cardDirector = CardDirector();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Design Pattern Builder'),
      ),
      body: Center(
        child: Column(
          children: [
            cardDirector.getCardBuilder(json1.id).build(json1),
            const SizedBox(height: 24),
            cardDirector.getCardBuilder(json2.id).build(json2),
          ],
        ),
      ),
    );
  }
}
