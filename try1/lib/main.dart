import 'package:flutter/material.dart';
import 'card.dart';
import 'home.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // fontFamily: 'Poppins',
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final home = Home();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final w = size.width;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Stack(
        children: [
          Container(child: home.build(context)),
          Positioned(
               bottom: 0,
              child: Container(
                width: w,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(88, 65, 187, 0.26),
                      blurRadius: 10,
                    ),
                  ],
                ),

    //             position: absolute;
    //             width: 1024px;
    // height: 129px;
    // left: 0px;
    // top: 1237px;
    // background: #FFFFFF;
    // box-shadow: 0px -3.90123px 23.4074px rgba(88, 65, 187, 0.26);
              )),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              // color: Colors.blue,
              height: 70,
              width: w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    // color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/Home.svg',height: 36,),
                          Text("Lorem",
                            style: TextStyle(
                              color: Color(0xff7000e3),
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,

                            ),
                          ),
                          SizedBox(height: 10,)
                        ],
                      )
                  ),
                  Container(
                    // color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/Chat.svg',height: 32,),
                          Text("Ipsum",
                            style: TextStyle(
                              color: Color(0xff373151),
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.normal,

                            ),
                          ),
                          SizedBox(height: 10,),
                        ],
                      )
                  ),
                  SizedBox(width: 40,),
                  Container(
                    // color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/Sit.svg',height: 32,),
                          Text("Sit",
                            style: TextStyle(
                              color: Color(0xff373151),
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.normal,

                            ),
                          ),
                          SizedBox(height: 10,),
                        ],
                      )
                  ),
                  Container(
                    // color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/Amet.svg',height: 32,),
                          Text("Amet",
                            style: TextStyle(
                              color: Color(0xff373151),
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.normal,

                            ),
                          ),
                          SizedBox(height: 10,),
                        ],
                      )
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,left:w*0.5-30,
              child: Container(
                // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/Dolor.svg',height: 70,),
                      Text("Dolor",
                        style: TextStyle(
                          color: Color(0xff373151),
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,

                        ),
                      ),
                      SizedBox(height: 2,),
                    ],
                  )
              ),
          ),
        ],
      ),
    );
  }
}
