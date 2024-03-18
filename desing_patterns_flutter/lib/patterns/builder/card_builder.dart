import 'package:desing_patterns_flutter/patterns/builder/models/card_content_response_model.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_footer_response_model.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_header_response_model.dart';
import 'package:flutter/material.dart';

abstract class CardBuilder {
  Widget setHeader(CardHeaderResponseModel headerModel);
  Widget setOrderContent(CardContentResponseModel contentModel);
  Widget setFooter(CardFooterResponseModel footerModel);
}
