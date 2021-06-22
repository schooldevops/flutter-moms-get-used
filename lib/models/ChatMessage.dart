import 'package:intl/intl.dart';

class ChatMessage {
  int userId;
  bool itsMe;
  String message;
  DateTime sentDate;

  ChatMessage(
      {required this.userId,
      required this.itsMe,
      required this.message,
      required this.sentDate});

  String geSentDate() {
    return DateFormat('yyyy-MM-dd kk:mm').format(sentDate);
  }
}
