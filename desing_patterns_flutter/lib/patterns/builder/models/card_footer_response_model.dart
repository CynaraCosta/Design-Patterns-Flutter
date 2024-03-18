import 'package:equatable/equatable.dart';

class CardFooterResponseModel extends Equatable {
  const CardFooterResponseModel(
    this.icon,
    this.iconColor,
    this.label,
    this.status,
  );

  factory CardFooterResponseModel.fromJson(Map<String, dynamic> json) =>
      CardFooterResponseModel(
        json["icon"] as String?,
        json["iconColor"] as String?,
        json["label"] as String?,
        json["status"] as String?,
      );

  final String? icon;
  final String? iconColor;
  final String? label;
  final String? status;

  @override
  List<Object?> get props => [
        icon,
        iconColor,
        label,
        status,
      ];
}
