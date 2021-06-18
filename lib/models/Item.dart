import 'package:intl/intl.dart';

class Item {
  List<String>? items;
  String title;
  String category;
  String location;
  DateTime registeredAt;
  String contents;
  double price;
  bool pick;
  int goodCount;

  Item(
      {this.items,
      this.title = '',
      this.category = '',
      this.location = '',
      required this.registeredAt,
      this.contents = '',
      this.price = 0,
      this.pick = false,
      this.goodCount = 0});

  String getElapseTime() {
    double elapseTime = (this.registeredAt.millisecondsSinceEpoch -
            DateTime.now().millisecondsSinceEpoch) /
        1000;

    int espTime = elapseTime.toInt();
    if (espTime == 0) {
      return '1 초전';
    } else if (espTime < 60) {
      return '$espTime 초전';
    } else if (espTime >= 60 && espTime < 60 * 60) {
      return '${(espTime / 60)} 분전';
    } else if (espTime >= 60 * 60 && espTime < 60 * 60 * 24) {
      return '${(espTime / (60 * 60))} 시간전';
    } else {
      return '${(espTime / (60 * 60 * 24))} 일전';
    }
  }

  String getFormattedPrice() {
    return NumberFormat.simpleCurrency(locale: 'ko').format(this.price);
  }

// List<Image>? getImages() {
//   if (this.items == null || this.items!.length == 0) {
//     return null;
//   }
//
//   return this.items!.map((url) => Image.network(url)).toList();
//
// }
}
