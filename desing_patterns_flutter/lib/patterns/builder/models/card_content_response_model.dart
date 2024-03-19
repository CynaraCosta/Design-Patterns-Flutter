import 'package:equatable/equatable.dart';

class CardContentResponseModel extends Equatable {
  const CardContentResponseModel(
    this.title,
    this.description,
    this.value,
    this.image,
  );

  factory CardContentResponseModel.fromJson(Map<String, dynamic> json) =>
      CardContentResponseModel(
        json["title"] as String?,
        json["description"] as String?,
        json["value"] as String?,
        json["image"] as String?,
      );

  final String? title;
  final String? description;
  final String? value;
  final String? image;

  @override
  List<Object?> get props => [
        title,
        description,
        value,
        image,
      ];
}
