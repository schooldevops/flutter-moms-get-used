import 'package:flutter/material.dart';
import 'package:moms_get_used/cosnts/ColorsConstants.dart';
import 'package:moms_get_used/models/ChatMessage.dart';
import 'package:moms_get_used/models/ChatSummary.dart';
import 'package:moms_get_used/models/UserInfo.dart';
import 'package:moms_get_used/screens/ChatScreen.dart';

// ignore: must_be_immutable
class ChatListScreen extends StatelessWidget {
  List<ChatSummary> chatSummaries = createFixtureChatSummary();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('대화목록'),
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
        child: SingleChildScrollView(
          child: Container(
            width: width,
            height: height,
            child: chatListLayout(context),
          ),
        ),
      ),
    );
  }

  Widget chatListLayout(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [...chatSummaries.map((item) => chatItem(context, item))],
        ),
      ),
    );
  }

  Widget chatItem(BuildContext context, ChatSummary summary) {
    double width = MediaQuery.of(context).size.width;
    double height = 115;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(chatSummary: summary),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
                color: kMainBackgroundColor, style: BorderStyle.solid),
          ),
        ),
        width: width,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          summary.partner.userName,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '${summary.partner.location1}',
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text('${summary.geEndMessageDate()}'),
                  ),
                  Container(
                    width: 200,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      summary.lastMessage,
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
            ),
            summary.imgUrl != null
                ? Expanded(
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Image(
                        image: NetworkImage(summary.imgUrl!),
                      ),
                    ),
                  )
                : Container(
                    child: Text(''),
                  ),
          ],
        ),
      ),
    );
  }
}

List<ChatSummary> createFixtureChatSummary() {
  return [
    ChatSummary(
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
      messages: createFixtureChatMessages(),
    ),
    ChatSummary(
      chatId: 2,
      itemId: 2,
      itemTitle: '슈윈 세발자전거 / 유아자전거 / 어린이자전거 / 클래식자전거',
      endMessageDate: DateTime.now(),
      imgUrl:
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/d88d9af35c53b32a2a823f845cb38db4590a8b31bd06d31042abd32f7209ecf6.webp?q=95&s=1440x1440&t=inside',
      status: '거래중',
      price: 50000,
      partner: UserInfo(
        userId: 2,
        avatar:
            'https://img2.sbs.co.kr/img/sbs_cms/WE/2020/10/20/VSG1603157012553-300-300.jpg',
        userName: '짹짹이 엄마',
        location1: '서울특별시 강남구',
      ),
      lastMessage: '오셔서 확인 해주시면 좋겠습니다.',
      messages: createFixtureChatMessages(),
    ),
    ChatSummary(
      chatId: 3,
      itemId: 3,
      itemTitle: '유아신발(130사이즈) 삑삑이신발 새신발-해피랜드',
      endMessageDate: DateTime.now(),
      imgUrl:
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/673E0865BA3DED366ECECDD0535868719EE4C944BDB51D17D2869FC5CC4E44FC.jpg?q=95&s=1440x1440&t=inside',
      status: '거래완료',
      price: 10000,
      partner: UserInfo(
        userId: 3,
        avatar:
            'http://www.myashley.co.kr/upload/Ashley/Notice/200421_%EC%95%A0%EC%8A%90%EB%A6%AC_%EC%8A%90%EB%A6%AC%EC%A6%88_%EC%BA%90%EB%A6%AD%ED%84%B0%EC%86%8C%EA%B0%9C_%EC%98%A8%EB%9D%BC%EC%9D%B8%EC%9A%A9(ver1)-05(3).jpg',
        userName: '린맘',
        location1: '과천시 동구',
      ),
      lastMessage: '동물원 옆 미술관에서 거래해요.',
      messages: createFixtureChatMessages(),
    ),
    ChatSummary(
      chatId: 4,
      itemId: 4,
      itemTitle: '쌍둥이유모차,연년생유모차,부가부동키',
      endMessageDate: DateTime.now(),
      imgUrl:
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/B4C22412E27E68E7A70B0749E43217CB270159FA8B798D3B3BF9DE6E5F4ACCB5.jpg?q=95&s=1440x1440&t=inside',
      status: '거래중',
      price: 270000,
      partner: UserInfo(
        userId: 4,
        avatar: 'https://lwi.nexon.com/ca/common/info/character/cha1.png',
        userName: '카트대마왕',
        location1: '하남시 미사동',
      ),
      lastMessage: '조정 경기장 옆에 보시면 편의점 있어요.',
      messages: createFixtureChatMessages(),
    ),
  ];
}

List<ChatMessage> createFixtureChatMessages() {
  return [
    ChatMessage(
        userId: 2, itsMe: false, message: '구매하고싶어요.', sentDate: DateTime.now()),
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
        userId: 3, itsMe: true, message: '네 가능하십니다.', sentDate: DateTime.now()),
  ];
}
