import 'package:desing_patterns_flutter/patterns/builder/models/card_header_response_model.dart';
import 'package:flutter/material.dart';

class CardHeaderWidget extends StatelessWidget {
  const CardHeaderWidget({
    required this.model,
    super.key,
  });

  final CardHeaderResponseModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (model.leadingIcon != null) ...{
              const Icon(
                Icons.local_pizza_rounded,
                size: 32,
                color: Colors.amber,
              ),
              const SizedBox(width: 8),
            },
            if (model.title != null) ...{
              const Text(
                'Pizza',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            }
          ],
        ),
        if (model.trailingIcon != null) ...{
          const Icon(
            Icons.local_pizza_rounded,
            size: 32,
            color: Colors.amber,
          ),
        }
      ],
    );
  }
}
