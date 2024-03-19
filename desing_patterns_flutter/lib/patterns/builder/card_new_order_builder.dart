import 'package:desing_patterns_flutter/patterns/builder/card_builder.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_content_response_model.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_footer_response_model.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_header_response_model.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_response_model.dart';
import 'package:desing_patterns_flutter/patterns/builder/widgets/card_new_order_content_widget.dart';
import 'package:desing_patterns_flutter/patterns/builder/widgets/card_footer_widget.dart';
import 'package:desing_patterns_flutter/patterns/builder/widgets/card_header_widget.dart';
import 'package:flutter/material.dart';

class CardNewOrderBuilder implements CardBuilder {
  @override
  String id = 'new-order';

  @override
  Widget setHeader(CardHeaderResponseModel headerModel) {
    return CardHeaderWidget(model: headerModel);
  }

  @override
  Widget setOrderContent(CardContentResponseModel contentModel) {
    return CardNewOrderContentWidget(model: contentModel);
  }

  @override
  Widget setFooter(CardFooterResponseModel footerModel) {
    return const CardFooterWidget();
  }

  @override
  Widget build(CardResponseModel json) {
    return Container(
      width: 312,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(json.bgImage ?? 'images/placeholder.jpeg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (json.header != null) setHeader(json.header!),
            const SizedBox(height: 72),
            if (json.content != null) setOrderContent(json.content!),
            const SizedBox(height: 4),
            if (json.footer != null) setFooter(json.footer!),
          ],
        ),
      ),
    );
  }
}
