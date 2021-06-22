import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moms_get_used/cosnts/ColorsConstants.dart';
import 'package:moms_get_used/models/ChatMessage.dart';
import 'package:moms_get_used/models/ChatSummary.dart';
import 'package:moms_get_used/models/UserInfo.dart';
import 'package:moms_get_used/screens/ChatScreen.dart';

class ProductDetailFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: kMainBackgroundColor),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            child: Icon(
              FontAwesomeIcons.home,
              size: 25.0,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, 'home');
            },
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '18,000 원',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                    Text(
                      '가격제안불가',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shadowColor: kMainBackgroundColor,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(
                              chatSummary: createChatSummaryFixture()),
                          // builder: (context) => DetailsScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      '채팅으로 구매하기',
                      style: TextStyle(color: kMainBackgroundColor),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

createChatSummaryFixture() {
  return ChatSummary(
    chatId: 1,
    itemId: 1,
    itemTitle: '아기운동화m아기운동화아기운동화아기운동화아기운동화아기운동화아기운동화아기운동화아기운동화',
    endMessageDate: DateTime.now(),
    imgUrl: 'http://gdimg.gmarket.co.kr/926294632/still/600?ver=0',
    status: '거래중',
    price: 3000,
    partner: UserInfo(
      userId: 1,
      avatar:
          'https://img4.yna.co.kr/photo/yna/YH/2010/02/01/PYH2010020102450000400_P2.jpg',
      userName: '후니아빠',
      location1: '서울특별시 강동구',
    ),
    lastMessage: '아이스크림 가게 앞에 있습니다.',
    messages: [
      ChatMessage(
          userId: 2,
          itsMe: false,
          message: '구매하고싶어요.',
          sentDate: DateTime.now()),
      ChatMessage(
          userId: 3, itsMe: true, message: '가능합니다.', sentDate: DateTime.now()),
      ChatMessage(
          userId: 2,
          itsMe: false,
          message: '상태는 어떠한가요? ',
          sentDate: DateTime.now()),
      ChatMessage(
          userId: 3,
          itsMe: true,
          message: 'SSS급이라고 보시면 됩니다. \n제품 하자 없구, 세척도 해 두었습니다.',
          sentDate: DateTime.now()),
      ChatMessage(
          userId: 2,
          itsMe: false,
          message: '아하 좋네요. \n어디서 거래히면 될까요?',
          sentDate: DateTime.now()),
      ChatMessage(
          userId: 3,
          itsMe: true,
          message: '미사 17단지 앞 CU 어떻신가요?',
          sentDate: DateTime.now()),
      ChatMessage(
          userId: 3,
          itsMe: true,
          message: '오전만 가능해서 10 ~ 11시 사이면 좋을듯 해요~.',
          sentDate: DateTime.now()),
      ChatMessage(
          userId: 2,
          itsMe: false,
          message: '알겠습니다. \n그럼 오전에 거래 하시지요.',
          sentDate: DateTime.now()),
      ChatMessage(
          userId: 3,
          itsMe: true,
          message: '네 오시면 연락 주세요.',
          sentDate: DateTime.now()),
      ChatMessage(
          userId: 2,
          itsMe: false,
          message: '네네, 가면서 연락 드릴께요.',
          sentDate: DateTime.now()),
      ChatMessage(
          userId: 2,
          itsMe: false,
          message: '상태보고 구매 결정해도 되죠?',
          sentDate: DateTime.now()),
      ChatMessage(
          userId: 3,
          itsMe: true,
          message: '네 가능하십니다.',
          sentDate: DateTime.now()),
    ],
  );
}
