import 'package:desing_patterns_flutter/patterns/builder/models/card_content_response_model.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_footer_response_model.dart';
import 'package:desing_patterns_flutter/patterns/builder/models/card_header_response_model.dart';
import 'package:equatable/equatable.dart';

class CardResponseModel extends Equatable {
  const CardResponseModel(
    this.bgImage,
    this.header,
    this.content,
    this.footer,
  );

  factory CardResponseModel.fromJson(Map<String, dynamic> json) =>
      CardResponseModel(
        json["bgImage"] as String?,
        json["header"] != null ? CardHeaderResponseModel.fromJson(json["header"]) : null,
        json["content"] != null ? CardContentResponseModel.fromJson(json["content"]) : null,
        json["footer"] != null ? CardFooterResponseModel.fromJson(json["footer"]) : null,
      );

  final String? bgImage;
  final CardHeaderResponseModel? header;
  final CardContentResponseModel? content;
  final CardFooterResponseModel? footer;

  @override
  List<Object?> get props => [
        bgImage,
        header,
        content,
        footer,
      ];
}
