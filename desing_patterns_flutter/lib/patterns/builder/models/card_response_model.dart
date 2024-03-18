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
        json["header"] as List<dynamic>?,
        json["content"] as List<dynamic>?,
        json["footer"] as List<dynamic>?,
      );

  final String? bgImage;
  final List<dynamic>? header;
  final List<dynamic>? content;
  final List<dynamic>? footer;

  @override
  List<Object?> get props => [
        bgImage,
        header,
        content,
        footer,
      ];
}
