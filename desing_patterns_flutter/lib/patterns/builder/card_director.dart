import 'package:desing_patterns_flutter/patterns/builder/card_builder.dart';
import 'package:desing_patterns_flutter/patterns/builder/card_new_order_builder.dart';
import 'package:desing_patterns_flutter/patterns/builder/card_order_builder.dart';

class CardDirector {
  CardBuilder getCardBuilder(String type) {
    if (type == 'new-order') {
      return CardNewOrderBuilder();
    } else if (type == 'order') {
      return CardOrderBuilder();
    }

    throw Exception('Card type not found');
  }
}
