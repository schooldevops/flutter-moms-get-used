import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final int id = 1;

  // const DetailsScreen({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.chevron_left,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.shopping_basket,
                            ),
                            onPressed: () =>
                                Navigator.pushNamed(context, 'orderscreen')),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Hero(
                        tag: '$id',
                        child: Image.network(
                          "http://gdimg.gmarket.co.kr/926294632/still/600?ver=0",
                          width: MediaQuery.of(context).size.width * .7,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "http://gdimg.gmarket.co.kr/926294632/still/600?ver=0",
                          style: Theme.of(context).textTheme.display1,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Text(
                      "Description",
                      style: Theme.of(context).textTheme.title,
                    ),
                    Text(
                      "test product\n\ㄴㅇㄹㄴㅇㄹㄴㅇㄹ\nsdfsdf\nlsdjflskfjlskdfj\nadlkfjdslkfj\nsldkfjsdlkfj\nsldkfjsdlkfjv\nslkdjfsdlkfjsl\nlskdjflskdfj",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('counter'),
                        Text(
                          "http://gdimg.gmarket.co.kr/926294632/still/600?ver=0",
                          style: Theme.of(context).textTheme.title,
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                        child: Text(
                          "Add To Cart",
                          style: Theme.of(context).textTheme.button!.apply(
                                color: Colors.white,
                              ),
                        ),
                        onPressed: () {},
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
