import 'package:moms_get_used/models/Item.dart';

class RecommendItem {
  List<Item>? recommendedItem;
  List<Item>? recentSearchItem;
  List<Item>? keywordItem;

  RecommendItem(
      {this.recommendedItem, this.recentSearchItem, this.keywordItem});
}
