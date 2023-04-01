import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'card.dart';




class Home{
  Home();
  final card1 = Card1();
  final card2 = Card2();
  Widget build(BuildContext context){
    return Container(
      // margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 165,
            decoration: BoxDecoration(
              color: Color(0xff7000e3),
            ),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 55,),
                      Text("Lorem",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                        ),
                      ),
                      Text("01 Jan 2022",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.grey,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(30,30,0,30),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(width: 90,),
                        SvgPicture.asset('assets/msg.svg',width: 38,),
                        SizedBox(width: 20),
                        SvgPicture.asset('assets/Notifications.svg',width: 35,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xff7000e3),
              child: Container(
                decoration: BoxDecoration(
                  color:Color(0xffffffff),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Container(color:Color(0xffa9a8ad),height: 3.5,width: 80,margin: EdgeInsets.fromLTRB(146,10,0,10),),
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 10, 0, 0),
                      // color: Colors.grey,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Lorem",
                            style:TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.5,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff373151),
                            ),
                          ),
                          Container(color: Color(0xff201d2f),width: 90,height: 1.25,margin: EdgeInsets.symmetric(horizontal: 10),),
                          Text("Ipsum",
                              style:TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.5,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff373151),
                              ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 178,
                      padding: EdgeInsets.fromLTRB(10, 5,5,0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context,index) {
                          return card2.buildcard(context);

                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 10, 0, 0),
                      // color: Colors.grey,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Lorem",
                            style:TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.5,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff373151),
                            ),
                          ),
                          Container(color: Color(0xff201d2f),width: 90,height: 1.25,margin: EdgeInsets.symmetric(horizontal: 10),),
                          Text("Ipsum",
                            style:TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.5,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff373151),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 155,
                      padding: EdgeInsets.all(10),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context,index) {
                          return card1.buildcard(context);

                        },
                      ),
                    ),
                    // card1.buildcard(context),
                    // SizedBox(height: 20,),
                    // card2.buildcard(context),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
}
}