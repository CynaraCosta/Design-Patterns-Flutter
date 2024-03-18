import 'package:equatable/equatable.dart';

class CardHeaderResponseModel extends Equatable {
  const CardHeaderResponseModel(
    this.leadingIcon,
    this.title,
    this.trailingIcon,
  );

  factory CardHeaderResponseModel.fromJson(Map<String, dynamic> json) =>
      CardHeaderResponseModel(
        json["leadingIcon"] as String?,
        json["title"] as String?,
        json["trailingIcon"] as String?,
      );

  final String? leadingIcon;
  final String? title;
  final String? trailingIcon;

  @override
  List<Object?> get props => [
        leadingIcon,
        title,
        trailingIcon,
      ];
}
