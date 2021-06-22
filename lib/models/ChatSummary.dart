import 'package:moms_get_used/models/ChatMessage.dart';
import 'package:moms_get_used/models/UserInfo.dart';
import 'package:intl/intl.dart';

class ChatSummary {
  int chatId;
  int itemId;
  String itemTitle;
  String? imgUrl;
  String status;
  int price;
  DateTime endMessageDate;
  UserInfo partner;
  String lastMessage;
  List<ChatMessage> messages;

  ChatSummary(
      {required this.chatId,
      required this.itemId,
      required this.itemTitle,
      this.imgUrl,
      required this.status,
      required this.price,
      required this.endMessageDate,
      required this.partner,
      required this.lastMessage,
      required this.messages});

  String geEndMessageDate() {
    return DateFormat('yyyy-MM-dd kk:mm').format(endMessageDate);
  }

  String getFormattedPrice() {
    return NumberFormat.simpleCurrency(locale: 'ko').format(this.price);
  }
}
