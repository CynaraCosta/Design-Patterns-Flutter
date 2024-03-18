import 'package:desing_patterns_flutter/patterns/builder/card_builder.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_content_response_model.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_footer_response_model.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_header_response_model.dart';
import 'package:desing_patterns_flutter/patterns/builder/widgets/card_new_order_content_widget.dart';
import 'package:desing_patterns_flutter/patterns/builder/widgets/card_footer_widget.dart';
import 'package:desing_patterns_flutter/patterns/builder/widgets/card_header_widget.dart';
import 'package:flutter/material.dart';

class CardNewOrderBuilder implements CardBuilder {
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
}
