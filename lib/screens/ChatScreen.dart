import 'package:flutter/material.dart';
import 'package:moms_get_used/cosnts/ColorsConstants.dart';
import 'package:moms_get_used/models/ChatMessage.dart';
import 'package:moms_get_used/models/ChatSummary.dart';
import 'package:moms_get_used/models/UserInfo.dart';

// ignore: must_be_immutable
class ChatScreen extends StatelessWidget {
  ChatSummary chatSummary;

  ChatScreen({required this.chatSummary});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('${chatSummary.itemTitle}'),
        backgroundColor: kMainBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => {
            Navigator.pop(context),
          },
        ),
        actions: [
          // IconButton(
          //     icon: Icon(Icons.search), onPressed: () => {print('click')}),
          // ElevatedButton(
          //   onPressed: () => {print('clic')},
          //   child: Text('등록하기'),
          //   style: ElevatedButton.styleFrom(
          //     primary: kMainButtonColor,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: new BorderRadius.circular(8.0),
          //     ),
          //   ),
          // ),
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/chat.png"),
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.2), BlendMode.dstATop),
              fit: BoxFit.fitWidth,
            ),
          ),
          width: width,
          height: height,
          child: Column(
            children: [
              chartTargetItem(context),
              chatLists(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget chartTargetItem(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: kMainBackgroundColor, width: 0.5)),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(5),
            child: Image(
              image: NetworkImage(chatSummary.imgUrl!),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${chatSummary.status}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${chatSummary.getFormattedPrice()}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget chatLists(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ...chatSummary.messages
                .map((item) => chatDetail(context, item, chatSummary))
          ],
        ),
      ),
    );
  }

  Widget chatDetail(
      BuildContext context, ChatMessage message, ChatSummary summary) {
    return message.itsMe
        ? chatMeDetail(context, message, summary)
        : chatPartnerDetail(context, message, summary);
  }

  Widget chatMeDetail(
      BuildContext context, ChatMessage message, ChatSummary summary) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 200,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kMainBackgroundColor,
              border: Border.all(width: 0),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.zero,
              ),
            ),
            child: Text(
              message.message,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Text(
              message.geSentDate(),
              style: TextStyle(color: Colors.black38),
            ),
          ),
        ],
      ),
    );
  }

  Widget chatPartnerDetail(
      BuildContext context, ChatMessage message, ChatSummary summary) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image(
                  image: NetworkImage(summary.partner.avatar),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: kMainBackgroundColor,
                    border: Border.all(width: 0),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    message.message,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    message.geSentDate(),
                    style: TextStyle(color: Colors.black38),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

createUserMap(UserInfo seller, UserInfo customer) {
  return {
    seller.userId: seller,
    customer.userId: customer,
  };
}
