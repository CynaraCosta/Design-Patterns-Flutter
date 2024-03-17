import 'package:desing_patterns_flutter/patterns/builder/card_builder.dart';
import 'package:flutter/material.dart';

class CardExample implements CardBuilder {
  @override
  Widget setContent() {
    throw UnimplementedError();
  }

  @override
  Widget setFooter() {
    throw UnimplementedError();
  }

  @override
  Widget setHeader() {
    throw UnimplementedError();
  }

  @override
  Widget build() {
    return Column(
      children: [
        setHeader(),
        setContent(),
        setFooter(),
      ],
    );
  }
}
