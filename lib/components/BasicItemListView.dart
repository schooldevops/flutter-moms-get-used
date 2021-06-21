import 'package:flutter/material.dart';
import 'package:moms_get_used/components/ItemList.dart';
import 'package:moms_get_used/models/Item.dart';

// ignore: must_be_immutable
class BasicItemListView extends StatelessWidget {
  List<Item> products = [
    Item(
        items: [
          'http://gdimg.gmarket.co.kr/926294632/still/600?ver=0',
          'http://img2.tmon.kr/cdn3/deals/2020/10/12/4517849590/4517849590_front_1c746e8c3f.jpg'
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
          'http://image.auction.co.kr/itemimage/11/38/09/113809ffb1.jpg',
        ],
        title: '아기자전거',
        location: '을지로',
        category: 'TOY',
        registeredAt: DateTime.now(),
        price: 30000,
        contents: '아기 자전거, 명품 자전거 거저 드려요.'),
    Item(
        items: [
          'http://image.auction.co.kr/itemimage/11/38/09/113809ffb1.jpg',
        ],
        title: '키티신발',
        location: '강남',
        category: 'CLOTH',
        registeredAt: DateTime.now(),
        price: 15000,
        contents: '귀여운 키티 신발, 불들어 와요, 제품 하자 없어요.'),
    Item(
        items: ['http://gdimg.gmarket.co.kr/926294632/still/600?ver=0'],
        title: '유모차',
        location: '종각',
        category: 'STROLLER',
        registeredAt: DateTime.now(),
        price: 200000,
        contents: '명품 유모차 입니다. 아이가 커져서 기기변경으로 싸게 드려요 . '),
    Item(
        items: [
          'http://gdimg.gmarket.co.kr/926294632/still/600?ver=0',
          'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F995789405D4A2A3E05'
        ],
        title: '치발기',
        location: '김포',
        category: 'DISH',
        registeredAt: DateTime.now(),
        price: 1500,
        contents: '치발기 싸다싸...  세척 소독 완료 '),
    Item(
        items: [
          'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F995789405D4A2A3E05',
          'http://image.auction.co.kr/itemimage/11/e1/83/11e18394c6.jpg'
        ],
        title: '애착인형(토끼) 업어가세요. 아이들이 너무 좋아해요 ',
        location: '강원도',
        category: 'TOY',
        registeredAt: DateTime.now(),
        price: 3000,
        contents: '토끼 애착인형, 한번 안으면 안떨어져요... '),
    Item(
        items: [
          'http://image.auction.co.kr/itemimage/11/e1/83/11e18394c6.jpg',
          'http://gdimg.gmarket.co.kr/1768707004/still/600?ver=1621766443'
        ],
        title: '애착인형(토끼)',
        location: '강원도',
        category: 'TOY',
        registeredAt: DateTime.now(),
        price: 3000,
        contents: '토끼 애착인형, 한번 안으면 안떨어져요... '),
    Item(
        items: [
          'http://gdimg.gmarket.co.kr/1768707004/still/600?ver=1621766443',
          'http://img.danawa.com/prod_img/500000/146/506/img/11506146_1.jpg?shrink=360:360&_v=20200710104614'
        ],
        title: '애착인형(토끼)',
        location: '강원도',
        category: 'TOY',
        registeredAt: DateTime.now(),
        price: 3000,
        contents: '토끼 애착인형, 한번 안으면 안떨어져요... '),
    Item(
        items: [
          'http://img.danawa.com/prod_img/500000/146/506/img/11506146_1.jpg?shrink=360:360&_v=20200710104614',
          'http://img.danawa.com/prod_img/500000/712/425/img/9425712_1.jpg?shrink=360:360&_v=20200715181814'
        ],
        title: '애착인형(토끼)',
        location: '강원도',
        category: 'TOY',
        registeredAt: DateTime.now(),
        price: 3000,
        contents: '토끼 애착인형, 한번 안으면 안떨어져요... '),
    Item(
        items: [
          'http://img.danawa.com/prod_img/500000/712/425/img/9425712_1.jpg?shrink=360:360&_v=20200715181814',
          'http://img.danawa.com/prod_img/500000/151/300/img/11300151_1.jpg?shrink=500:500&_v=20200717174244'
        ],
        title: '애착인형(토끼)',
        location: '강원도',
        category: 'TOY',
        registeredAt: DateTime.now(),
        price: 3000,
        contents: '토끼 애착인형, 한번 안으면 안떨어져요... '),
    Item(
        items: [],
        title: '애착인형(토끼)',
        location: '강원도',
        category: 'TOY',
        registeredAt: DateTime.now(),
        price: 3000,
        contents: '토끼 애착인형, 한번 안으면 안떨어져요... '),
    Item(
        items: [],
        title: '애착인형(토끼)',
        location: '강원도',
        category: 'TOY',
        registeredAt: DateTime.now(),
        price: 3000,
        contents: '토끼 애착인형, 한번 안으면 안떨어져요... '),
    Item(
        items: [],
        title: '애착인형 접시(토끼)',
        location: '강원도',
        category: 'DISH',
        registeredAt: DateTime.now(),
        price: 3000,
        contents: '토끼 애착인형, 한번 안으면 안떨어져요... '),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return BasicItemList(products[index]);
      },
    );
  }
}
