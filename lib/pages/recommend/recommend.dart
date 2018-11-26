import 'package:flutter/material.dart';

import 'package:cookday/pages/recommend/recommend_horizontal.dart';
import 'package:cookday/pages/recommend/popular_sliding.dart';

class Recommend extends StatefulWidget {
  @override
  _RecommendState createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              floating: true,
              expandedHeight: MediaQuery.of(context).size.height*0.4,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                child: Stack(
                  children: <Widget>[
                    Image.asset("images/mainpic.png", fit: BoxFit.cover, width: MediaQuery.of(context).size.width,),
                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("냉장고 안에\n재료\n버리지 마세요", style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold, color: Colors.white),),
                          Text("자신의 냉장고에 있는 재료들로만으로도 요리를 할 수 있어요!",style: TextStyle(color: Colors.white))
                        ],
                      ),
                    )
                  ],
                )
              ),
              )
              // title: new Text(
              //   "CookDay",
              //   style: TextStyle(
              //     fontFamily: 'Dancing',
              //     fontSize: 40.0,
              //     fontWeight: FontWeight.bold,
              //     color: const Color(0xFFFF6347),
              //   ),
              // ),
            ),
            
          ];
        },
        body: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
                //추천수 가장 많은 유명한 메뉴들 추천
              Container(
                // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.35),
                child: PopularSliding(),
              ),
              //내 재료들 목록에만 있는 메뉴들 추천
              Container(
                  margin: EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0),
                  child: Text(
                    "너만을 위한 메뉴",
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  )),
              Container(
                padding: EdgeInsets.only(left: 9.0, right: 9.0, top: 9.0),
                height: MediaQuery.of(context).size.height *
                    0.3, //전체 높이의 30%를 차지하게 한다
                child: RecommendHorizontal(
                    //가로로 scroll 가능한 item들 generate
                    ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0),
                  child: Text(
                    "SNS 핫한 음식들",
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  )),
              Container(
                padding: EdgeInsets.only(left: 9.0, right: 9.0, top: 9.0),
                height: MediaQuery.of(context).size.height *
                    0.3, //전체 높이의 30%를 차지하게 한다
                child: RecommendHorizontal(
                    //가로로 scroll 가능한 item들 generate
                    ),
              ),
            ],
          ),
        ));

    //           // Container(
    //           //   padding: EdgeInsets.only(left: 9.0, right: 9.0, top: 9.0),
    //           //   height:
    //           //       MediaQuery.of(context).size.height*0.5, //전체 높이의 30%를 차지하게 한다
    //           //   child: ListView.builder(
    //           //       itemCount: trashList.length,
    //           //       itemBuilder: (BuildContext context, int index) {
    //           //         final item = trashList[index];
    //           //         return _buildList(context, item);
    //           //       }),
    //           // ),
    //         ],
    //       ));
  }
}

