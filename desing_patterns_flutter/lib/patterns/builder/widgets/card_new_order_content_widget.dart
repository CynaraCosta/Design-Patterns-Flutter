import 'package:desing_patterns_flutter/patterns/builder/models/card_content_response_model.dart';
import 'package:flutter/material.dart';

class CardNewOrderContentWidget extends StatelessWidget {
  const CardNewOrderContentWidget({
    required this.model,
    super.key,
  });

  final CardContentResponseModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (model.title != null) ...{
          Text(
            model.title ?? '',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          )
        },
        if (model.description != null) ...{
          const SizedBox(height: 4),
          Text(
            model.description ?? '',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 8,
              fontWeight: FontWeight.w500,
            ),
          )
        }
      ],
    );
  }
}
