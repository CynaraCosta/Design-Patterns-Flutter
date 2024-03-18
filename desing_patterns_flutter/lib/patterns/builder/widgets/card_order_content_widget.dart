import 'package:desing_patterns_flutter/patterns/builder/models/card_content_response_model.dart';
import 'package:flutter/material.dart';

class CardOrderContentWidget extends StatelessWidget {
  const CardOrderContentWidget({
    required this.model,
    super.key,
  });

  final CardContentResponseModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (model.title != null) ... {
              Text(
                model.title ?? '',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 4),
            },
            if (model.value != null) ... {
              Text(
                model.value ?? '',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            }
          ],
        ),
        if (model.image != null) ...{
          // return image
        }
      ],
    );
  }
}
