import 'package:desing_patterns_flutter/patterns/builder/card_builder.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_response_model.dart';
import 'package:flutter/material.dart';

class CardDirector {
  CardBuilder card;

  CardDirector(this.card);

  Widget build(CardResponseModel json) {
    return Container(
      width: 312,
      height: 200,
      decoration: _buildDecoration(json.bgImage),
      child: Column(
        children: [
          if (json.header != null) card.setHeader(json.header!),
          if (json.content != null) card.setOrderContent(json.content!),
          if (json.footer != null) card.setFooter(json.footer!),
        ],
      ),
    );
  }

  Decoration? _buildDecoration(String? bgImage) {
    if (bgImage != null) {
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage(bgImage),
          fit: BoxFit.cover,
        ),
      );
    } else {
      return const BoxDecoration(
        color: Color(0xffFF5151), // Defina a cor desejada
      );
    }
  }
}