import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import "package:curved_navigation_bar/curved_navigation_bar.dart";

class MyHomePageRoute extends StatefulWidget {
  const MyHomePageRoute({Key? key}) : super(key: key);

  @override
  _MyHomePageRouteState createState() => _MyHomePageRouteState();
}

class _MyHomePageRouteState extends State<MyHomePageRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.teal,
        items:const <Widget>[
          Icon(Icons.home_outlined, size: 30, color: Colors.black54),
          Icon(Icons.favorite_outline, size: 30,color: Colors.black54),
          Icon(Icons.calendar_today, size: 30,color: Colors.black54),
          Icon(Icons.notifications_active_outlined, size: 30,color: Colors.black54),
          Icon(Icons.location_on_outlined, size: 30,color: Colors.black54),
        ],
        onTap: (index) {

        },
      ),
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor:const Color(0xFFF9BE7C),
            leading: GestureDetector(
              onTap: () {/* Write listener code here */},
              child:const Icon(
                Icons.format_align_left_rounded,
                color: Colors.black,
                size: 29.0,
              ),
            ),

            actions: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      CupertinoIcons.search,
                      color: Colors.black,
                      size: 26.0,
                    ),
                  )),
            ],

            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(60.0))),
            expandedHeight: 210.0,
            //pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: <Widget>[
                  Container(
                    height: 210.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60.0),
                        bottomLeft: Radius.circular(60.0),
                      ),
                    ),
                    child: myContainer(),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(List.generate(
              1,
              (index) => Container(
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20.0),
                              child:const Text(
                                "My tasks",
                                style: TextStyle(
                                  fontSize: 22.0,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(50), // radius of 10
                                color:const Color(0xFF017A85),
                              ),
                              margin: EdgeInsets.only(top: 10.0, right: 20.0),
                              child: Icon(
                                Icons.calendar_today,
                                color: Colors.white60,
                                size: 26.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(50), // radius of 10
                                color: Color(0xFFE56470),
                              ),
                              margin: EdgeInsets.only(
                                  top: 10.0, left: 20.0, bottom: 10.0),
                              child: Icon(
                                Icons.watch_later_outlined,
                                color: Colors.white60,
                                size: 22.0,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "To Do",
                                    style: TextStyle(
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "1 tasks now  1 started",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(50), // radius of 10
                                color: Color(0xFFFABE79),
                              ),
                              margin: EdgeInsets.only(
                                  top: 10.0, left: 20.0, bottom: 10.0),
                              child: Icon(
                                Icons.downloading,
                                color: Colors.white60,
                                size: 22.0,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "In Progress",
                                    style: TextStyle(
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "5 task now  1 started",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(50), // radius of 10
                                color: Color(0xFF6787D8),
                              ),
                              margin: EdgeInsets.only(
                                  top: 10.0, left: 20.0, bottom: 10.0),
                              child: Icon(
                                Icons.skip_next,
                                color: Colors.white60,
                                size: 22.0,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Done",
                                    style: TextStyle(
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "18 tasks now  18 completed",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20.0, top: 30.0),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            "Active Projects",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                        gridList(),
                      ],
                    ),
                  ],
                ),
              ),
            )),
          ),
        ]),
      ),
    );
  }

  Widget myContainer() {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.all(7.0),
                        height: 95,
                        width: 95,
                        child: CircleAvatar(
                            radius: (52),
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                "assets/images/odam.png",
                                fit: BoxFit.cover,
                                height: 95,
                                width: 95,
                              ),
                            ))),
                    // you can replace
                    Container(
                      height: 95,
                      width: 95,
                      child:const CircularProgressIndicator(
                        value: 0.70,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 30.0, top: 80.0),
                    child: const Text(
                      "Philip Mccoy",
                      style: TextStyle(
                        fontSize: 29.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30.0),
                    child: const Text(
                      "Project Manager",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget gridList(){
    return  GridView.count(
      crossAxisCount: 2,
      physics:
      NeverScrollableScrollPhysics(), // to disable GridView's scrolling
      shrinkWrap: true, // You won't see infinite size error
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              top: 20.0, left: 14.0, right: 10.0),
          height: 154,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 30.0,top: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircularPercentIndicator(
                      radius: 80.0,
                      lineWidth: 5.0,
                      animation: true,
                      percent: 0.25,
                      progressColor: Colors.white,
                      backgroundColor: Colors.white10,
                      center: new Text(
                        "25.0%",
                        style: new TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 15.0),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 26.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const [
                          Text("Medical App",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          Text("9 hours progress",
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            color: Color(0xFF309398),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: 20.0, left: 14.0, right: 10.0),
          height: 154,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 30.0,top: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircularPercentIndicator(
                      radius: 80.0,
                      lineWidth: 5.0,
                      animation: true,
                      percent: 0.75,
                      progressColor: Colors.white,
                      backgroundColor: Colors.white10,
                      center: new Text(
                        "75.0%",
                        style: new TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 15.0),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 26.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const [
                          Text("Sport App",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          Text("40 hours progress",
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            color: Color(0xFFE46471),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: 20.0, left: 14.0, right: 10.0),
          height: 154,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 30.0,top: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircularPercentIndicator(
                      radius: 80.0,
                      lineWidth: 5.0,
                      animation: true,
                      percent: 0.61,
                      progressColor: Colors.white,
                      backgroundColor: Colors.white10,
                      center: new Text(
                        "61.0%",
                        style: new TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 15.0),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 26.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const [
                          Text("Social App",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          Text("28 hours progress",
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            color: Color(0xFFF8BE7D),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: 20.0, left: 14.0, right: 10.0),
          height: 154,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 30.0,top: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircularPercentIndicator(
                      radius: 80.0,
                      lineWidth: 5.0,
                      animation: true,
                      percent: 0.87,
                      progressColor: Colors.white,
                      backgroundColor: Colors.white10,
                      center: new Text(
                        "87.0%",
                        style: new TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 15.0),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 26.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const [
                          Text("IT App",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          Text("108 hours progress",
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            color: Color(0xFF6688E2),
          ),
        ),



      ],
    );
  }
}
