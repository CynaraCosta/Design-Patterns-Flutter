import 'package:desing_patterns_flutter/patterns/builder/card_example.dart';
import 'package:flutter/material.dart';

class CardDirector {
  CardExample card;

  CardDirector(this.card);

  Widget build(Map<String, dynamic> json) {
    card.setHeader();
    card.setContent();
    card.setFooter();
    return card.build();
  }
}
