import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Card1{

  Card1();

  Widget buildcard(BuildContext context){
    return Container(
      padding: EdgeInsets.all(8),
      height:115,
      width: 300,
      margin: EdgeInsets.fromLTRB(8, 10, 16, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 8.0,
            color: Color.fromRGBO( 88, 65, 187,0.26)
            // offset: Offset(0,5)
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // color: Colors.red,
            child: Row(
              children: [
                SizedBox(width: 15,),
                Container(
                    // color: Colors.grey,
                  // padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                        "Card 1",
                      style: TextStyle(
                        color: Color(0xff373151),
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        fontFamily: 'Poppins',
                      ),
                    )),
                SizedBox(
                  width: 36,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xfff1e4ff),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  width: 105,
                  height: 25,
                  // margin: EdgeInsets.all(10),
                  child: Center(child: Text(
                      "Lorem",
                    style: TextStyle(
                      color: Color(0xff7000e3),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    fontStyle: FontStyle.normal,
                    ),
                  )),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 15,),
              Container(
                child: SvgPicture.asset('assets/calender.svg',width: 23,),
                // padding: EdgeInsets.symmetric(horizontal: 20),
              ),
              SizedBox(width: 8),
              Text(
                  "Dolor sit amet",
                style: TextStyle(
                  color: Color(0xff373151),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              SizedBox(width: 15,),
              Text(
                  "01 January",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Color(0xfffebc33),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class Card2{
  Card2();

  Widget buildcard(BuildContext context){
    return Container(
      margin: EdgeInsets.fromLTRB(15,4,15,4),
      height: 160,
      width: 340,
      child: Stack(
        children: [Container(
          height: 160,
          width: 340,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff7000e3),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                        "Card 1",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 19,
                        color: Color(0xffffffff),
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(width:35),

                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xfff1e4ff),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      width: 105,
                      height: 25,
                      // margin: EdgeInsets.all(10),
                      child: Center(child: Text(
                        "Lorem",
                        style: TextStyle(
                          color: Color(0xff7000e3),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                        ),
                      )),
                    )
                  ],
                ),
              ),
              SizedBox(height:2),
              Text(
                "Lorem Ipsum",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 22,
                   color: Color(0xffffffff),
                   fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 2,),
              Text(
                  "Dolor sit amet",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 109,
                height: 24,
                decoration: BoxDecoration(
                  color: Color(0xfffebc33),
                    borderRadius: BorderRadius.circular(8),

                ),
                child: Row(
                  children: [
                    SizedBox(width: 12,),
                    Container(
                      child: SvgPicture.asset('assets/clock.svg',height: 18,),
                    ),
                    SizedBox(width: 6,),
                    Text("11 :00 AM",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
          Positioned(
            bottom: 10,
            right: 0,
            child: Container(
              // color: Colors.grey,
              // width: 200,
              // height: 200,
              child: SvgPicture.asset('assets/Illustrator.svg',width: 140,),

            ),
          )
      ],
      ),
    );
  }
}