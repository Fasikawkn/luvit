import 'package:assinmentluvit/models/card_info_data.dart';

class CardData {
  final int id;
  final String image;
  final int? likeCount;
  final String? title;
  final String? description;
  final List<CardInfoData> info;

  CardData({
    required this.id,
    required this.image,
    this.likeCount,
    this.title,
    this.description,
    this.info = const [],
  });
}
