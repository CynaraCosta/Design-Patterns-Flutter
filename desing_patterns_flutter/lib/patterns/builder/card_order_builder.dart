import 'package:desing_patterns_flutter/patterns/builder/card_builder.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_content_response_model.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_footer_response_model.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_header_response_model.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_response_model.dart';
import 'package:desing_patterns_flutter/patterns/builder/widgets/card_footer_widget.dart';
import 'package:desing_patterns_flutter/patterns/builder/widgets/card_header_widget.dart';
import 'package:desing_patterns_flutter/patterns/builder/widgets/card_order_content_widget.dart';
import 'package:flutter/material.dart';

class CardOrderBuilder implements CardBuilder {
  @override
  String id = 'order';

  @override
  Widget setHeader(CardHeaderResponseModel headerModel) {
    return CardHeaderWidget(model: headerModel);
  }

  @override
  Widget setOrderContent(CardContentResponseModel contentModel) {
    return CardOrderContentWidget(model: contentModel);
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
      decoration: const BoxDecoration(
        color: Color(0xffFF5151),
      ),
      child: Column(
        children: [
          if (json.header != null) setHeader(json.header!),
          if (json.content != null) setOrderContent(json.content!),
          if (json.footer != null) setFooter(json.footer!),
        ],
      ),
    );
  }
}
