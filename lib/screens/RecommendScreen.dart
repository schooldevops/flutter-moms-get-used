import 'package:flutter/material.dart';
import 'package:moms_get_used/cosnts/ColorsConstants.dart';
import 'package:moms_get_used/models/Item.dart';
import 'package:moms_get_used/models/RecommendItem.dart';
import 'package:moms_get_used/screens/DetailProductScreen.dart';

// ignore: must_be_immutable
class RecommendScreen extends StatelessWidget {
  RecommendItem recommendedItems = RecommendItem(
    recommendedItem: getRecommendedItems(),
    recentSearchItem: getRecentSearchItems(),
    keywordItem: getKeywordItems(),
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('아이를 위한 추천'),
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
            child: recommendLayout(context),
          ),
        ),
      ),
    );
  }

  Widget recommendLayout(BuildContext context) {
    return Column(
      children: [
        recommendBox(
            context, '우리 아이를 위한 추천 상품', this.recommendedItems.recommendedItem!),
        recommendBox(
            context, '최근 검색 추천 상품', this.recommendedItems.recentSearchItem!),
        recommendBox(
            context, 'Keyword 추천 상품', this.recommendedItems.keywordItem!),
        SizedBox(
          height: 10,
        )
      ],
    );
  }

  Widget recommendBox(BuildContext context, String title, List<Item> items) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: width,
      height: 240,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, top: 15, bottom: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              '$title',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...items.map((item) => itemContainer(context, item))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget itemContainer(BuildContext context, Item item) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailProductScreen(item: item),
            // builder: (context) => DetailsScreen(),
          ),
        ),
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: 160,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: kMainBackgroundColor,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Text(
                item.title,
                overflow: TextOverflow.clip,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Image(
                  image: NetworkImage(item.items![0]),
                  height: 100.0,
                  width: 100.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                item.getFormattedPrice(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

getRecommendedItems() {
  return [
    Item(
        items: [
          'https://gdimg.gmarket.co.kr/926294632/still/600?ver=0',
          'https://img2.tmon.kr/cdn3/deals/2020/10/12/4517849590/4517849590_front_1c746e8c3f.jpg'
        ],
        title: '아기운동화m아기운동화아기운동화아기운동화아기운동화아기운동화아기운동화아기운동화아기운동화',
        location: '을지로',
        category: 'CLOTH',
        registeredAt: DateTime.now(),
        price: 3000,
        pick: true,
        goodCount: 2,
        contents:
            '아기 운동화 싸게 드려요. \n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.\n작년 구입 1번 신음.'),
    Item(
        items: [
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/d88d9af35c53b32a2a823f845cb38db4590a8b31bd06d31042abd32f7209ecf6.webp?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/705097bdcfbeb6c6213c0144cc783862ab6f7be8f364372fb522c8dde2ef8a52.webp?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/775d557e4877cba0f3df28f201bc93d2bd255d05d5d68c9422f6eb32625a7179.webp?q=95&s=1440x1440&t=inside',
        ],
        title: '슈윈 세발자전거 / 유아자전거 / 어린이자전거 / 클래식자전거',
        location: '을지로',
        category: 'TOY',
        registeredAt: DateTime.now(),
        price: 80000,
        contents: """슈윈 유아용 세발자전거
Schwinn Roadster Tricycle for Toddlers and Kids
클래식 함이 넘 이쁜 세발자전거입니다
뒤바퀴 양쪽 사이 받침대가 나무로 되어서
더 클래식해보이고 이뻐요
너무 이뻐서 아이태우고 싶어서 사서
인테리어용으로 놓고 가끔 베란다에서
타고 하는 정도라서 밖에서 탄적이 없어
상품은 깨끗합니다
보관위주로 가지고 있다보니
타실용도로 쓰실분은
타이어 빵빵하게 바람함 넣으셔야할것같아요
자전거가 넘 이뻐서 클래식한 인테리어 용도로 자전거를 사용하셔도 좋을것같구요
클래식한 명품 자전거 타기 좋아하는 아이들은
타는 용으로도 넘 좋아요~
부피가 있어 직거래 원합니다
깨끗하지만 아무래도 중고다보니 새것같진않아요
신중한 구매부탁드립니다
환불사양합니다
위치 ; 옥정동"""),
    Item(
        items: [
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/673E0865BA3DED366ECECDD0535868719EE4C944BDB51D17D2869FC5CC4E44FC.jpg?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/11ED1283E354500EE2EB09B10E91092A2B0C42C6C0F8ECA5083CE3B3A25FDB9E.jpg?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/3AA06060D04DAD026D21E490AA8AC03DC5DCA5C34C0DB3A839BB9F500F92D0D9.jpg?q=95&s=1440x1440&t=inside',
        ],
        title: '유아신발(130사이즈) 삑삑이신발 새신발-해피랜드',
        location: '강남',
        category: 'CLOTH',
        registeredAt: DateTime.now(),
        price: 5000,
        contents:
            """애기들이 신고 걷는게 귀여워 구입했는데 삑삑소리를 너무 싫어해서 한번도 못 신겼네요 ㅠ 삑삑이를 빼고 줘도 완전 거부해 내놓습니다 ㅠ 130사이즈고 한번도 안 신은 새신발이예요 삑삑이를 끼우는 구멍이 있어 빼고 일반신발로 신겨도 됩니다
성서토이앤맘 앞에서 만나서 거래해요^^

"""),
  ];
}

getRecentSearchItems() {
  return [
    Item(
        items: [
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/47D0CE82F7D5A95F1D43D8D476F0ED99F817C88D1A0AFD779A1F239575E40BA6.jpg?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/5A7C2E171053ACA2F2FD4A982E6C72786CBE1B75F5280BC4D98BCBFA2881B04A.jpg?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/1FC1CFF2957207F73E2E5E9CF09D010CEA9C09CD6B6BB76B38EAD2C666149FC9.jpg?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/93D987EA2908D0ED99002C8B56161B6414C3203C43AEFF2B6375F44BCA65D05F.jpg?q=95&s=1440x1440&t=inside',
        ],
        title: '모윰치발기,헝겊책,푸우치발기,토프 유모차장난감, 실리콘 놀이치발기 일괄판매',
        location: '김포',
        category: 'TOY',
        registeredAt: DateTime.now(),
        price: 9000,
        contents: """아가때 쓰던 장난감 치발기 일괄판매합니다
푸우치발기는 만지면 바스락 소리나요
타프유모차 장난감은 여기저기 달아서 쓸수 있어서 활용도가 좋습니다
성복동 직거래 또는 문고리 거래 희망해요
개별판매 환불불가입니다~"""),
    Item(
        items: [
          'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F995789405D4A2A3E05',
          'https://image.auction.co.kr/itemimage/11/e1/83/11e18394c6.jpg'
        ],
        title: '애착인형(토끼) 업어가세요. 아이들이 너무 좋아해요 ',
        location: '강원도',
        category: 'TOY',
        registeredAt: DateTime.now(),
        price: 3000,
        contents: '토끼 애착인형, 한번 안으면 안떨어져요... '),
    Item(
        items: [
          'https://dnvefa72aowie.cloudfront.net/origin/article/202102/97E93471A95449A81B259162969876CA7D9056EA03F090A17489510A9C7D1252.jpg?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202102/1D31F8CD05E004CD3D7F08A8F80E6EADBD184F6C2D40967F911E4CD6B608EEF1.jpg?q=95&s=1440x1440&t=inside'
        ],
        title: '아동 캐릭터 의자(호빵맨)+식판(키즈), 유아의자, 식탁의자, 유아식탁의자, 호빵맨유아의자, 식탁의자',
        location: '미사동',
        category: 'TOY',
        registeredAt: DateTime.now(),
        price: 45000,
        contents:
            '[호빵맨 유아 의자]\n✔️7-36개월 아이들이 사용하는 의자 입니다.\n✔️제한 체중 : 16kg\n✔️사이즈 : W360 x H365 x D380mm\n앉을때 소리가 나요✔️\n사용안한 새 상품입니다✔️\n운송과정 아주 작은 기스가 있습니다‼️\n실제 구입가격 식판까지 해서 70,000원\n교환 및 환불은 불가합니다'),
  ];
}

getKeywordItems() {
  return [
    Item(
        items: [
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/7C2FE51282BACF0B3982922847D0386B1AA61AF99F765D1B2784D75263716E05.jpg?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/8B6B18AAAA99A27A4CBF069173E915B45B4509CDE0A3B504B2E775A639F54356.jpg?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/01E0279F8BD690DAE52066D4ECDFD7E766CAB8696ACD124C8592C49C1F81D7C3.jpg?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/87BDCA6C05B131539CEA459AF927CEBF2938C3144F6526CA4B9E8A34E877E10F.jpg?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/DEDC566B7DA7CED7003EB5BC6662470A18201980EEBB4296384CD03FE1C448D1.jpg?q=95&s=1440x1440&t=inside',
        ],
        title: '유아 돌~4세 유아교구 및 원목장난감 일괄판매',
        location: '강원도',
        category: 'TOY',
        registeredAt: DateTime.now(),
        price: 30000,
        contents: """아이에게 필요한 시각,소근육발달,인지,정서발달에 도움되는 유용한 원목장난감 세트로 일괄판매합니다

도형모양,채소모양,그림 퍼즐맞추기 ,색깔개구리낚시놀이,망치로 두두리기,동물기차놀이 )"""),
    Item(
        items: [
          'https://img.danawa.com/prod_img/500000/712/425/img/9425712_1.jpg?shrink=360:360&_v=20200715181814',
          'https://img.danawa.com/prod_img/500000/151/300/img/11300151_1.jpg?shrink=500:500&_v=20200717174244'
        ],
        title: '하기스 남아 팬티형',
        location: '울산',
        category: 'CLOTH',
        registeredAt: DateTime.now(),
        price: 3000,
        contents: '하기스 남아 팬티형, 10개 팔아요. \n미개봉입니다. '),
    Item(
        items: [
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/c495d79707eb90efa37d972b6c3bc0ee9e9b664f06efc44c28635fc2f02a4d93.webp?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/8355bcb5f42aff387cf99ebb49b914ef5b9f376d4bc8bce798149ac38d8abdbf.webp?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/facac1c2a26b9888ba6987ddd831a0f8c56e02d07d8d7e240b31e1c3f78e56b3.webp?q=95&s=1440x1440&t=inside',
        ],
        title: '유아모자 유아밀짚모자',
        location: '명륜동',
        category: 'CLOTH',
        registeredAt: DateTime.now(),
        price: 5000,
        contents: """둘레 50cm에요.
사이즈 조절은 안되요.
한번도 착용하지 않은
새상품이에요.^^

딸아이 작아진 옷도 정리중이니
제가 올려놓은 다른옷도 구경해보세요.
명륜동 직거래 원하구요. 여러벌 구매시
택배도 가능합니다.^^"""),
    Item(
        items: [
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/54643cde6624259183b6e539454a1c490b55103563a9fd3ef1014876966e8acc.webp?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/047590d4192114ec537206240e61d00b8a3b24c0f0b7ca9f6a2f9bc8d7ce9f66.webp?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/968ab8216a0038aad49fddadb3d80af7c4581f8865b927413dbbae562ab08809.webp?q=95&s=1440x1440&t=inside',
          'https://dnvefa72aowie.cloudfront.net/origin/article/202106/2a0e325a7b160a09e641e64599b7eb4bb6a61a707027d270d87bfe6123ec35b1.webp?q=95&s=1440x1440&t=inside',
        ],
        title: '유아가방 유아크로스백',
        location: '포천시',
        category: 'TOY',
        registeredAt: DateTime.now(),
        price: 40000,
        contents: """유아 샤x (하늘색)가방이에요~ 신세계잡화코너에서 샀어용~ 구매당시 85000원줬어요.
퀄이 인터넷파는가방이랑 틀려요. 아이가 싫어해서 1번 들었어요. 40000원에판매해요.
​
검정색가방은 너무 밋밋해서 리폼했어요~이것도 2~3번 들었나봐요.10000원에판매합니다.
둘다 기스 없고 새컨디션입니다.

"""),
    Item(
        items: [
          'https://dnvefa72aowie.cloudfront.net/origin/article/202105/81f472cbfcaaed068ba2d7c51f69e26ac668a5ad68913198cabf89731ab9bd9b.webp?q=95&s=1440x1440&t=inside',
        ],
        title: '#유아식판 #유아턱받이',
        location: '송파구',
        category: 'DISH',
        registeredAt: DateTime.now(),
        price: 13000,
        contents: """합쳐서 전부 판매해요~~
실사용은 많지않지만 예민맘 피해주세요~~
중고라서 물건에 큰 하자 없으면 교환, 환불은 어려운 점 이해 부탁드려요~

#올림픽공원역거래 #주말가능직거래는 #택배가능"""),
  ];
}
