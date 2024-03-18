import 'package:desing_patterns_flutter/patterns/builder/utils/card_enum.dart';
import 'package:equatable/equatable.dart';

class CardContentResponseModel extends Equatable {
  const CardContentResponseModel(
    this.id,
    this.title,
    this.description,
    this.value,
    this.image,
  );

  factory CardContentResponseModel.fromJson(Map<String, dynamic> json) =>
      CardContentResponseModel(
        getCardTypeFromString(json["id"] as String),
        json["title"] as String?,
        json["description"] as String?,
        json["value"] as String?,
        json["image"] as String?,
      );

  static CardType getCardTypeFromString(String typeString) {
    return CardType.values.firstWhere(
      (type) => type.toString().split('.').last == typeString,
      orElse: () => throw ArgumentError('Unsupported CardType string: $typeString')
    );
  }

  final CardType id;
  final String? title;
  final String? description;
  final String? value;
  final String? image;

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        value,
        image,
      ];
}
