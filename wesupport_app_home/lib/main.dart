import 'package:flutter/material.dart';
import 'package:travelminapp/detailPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.donut_large),
                Stack(
                  children: <Widget>[
                    Container(height: 60.0, width: 60.0),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/profil.jpeg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(25.0)),
                    ),
                    Positioned(
                      left: 5.0,
                      top: 40.0,
                      child: Container(
                        height: 15.0,
                        width: 15.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.5),
                            color: Colors.green,
                            border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 1.0)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Finde deine',
                  style: TextStyle(
                      fontFamily: 'Opensans',
                      fontSize: 30.0,
                  ),
                ),
                //Text(
                  //'deine',
                  //style: TextStyle(
                    //fontFamily: 'Opensans',
                    //fontSize: 30.0,
                  //),
                //),
                Text(
                  'Challenge',
                  style: TextStyle(
                    fontFamily: 'Opensans',
                    fontSize: 30.0,
                    color: Color(0xFFD30029)
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              padding: EdgeInsets.only(left: 20.0),
              height: 70.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFFF9F9F9)),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.withOpacity(0.7),
                    ),
                    hintText: '#playinside',
                    hintStyle: TextStyle(
                        fontFamily: 'Opensans',
                        fontSize: 15.0,
                        color: Colors.grey.withOpacity(0.7)),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Challenges',
                      style: TextStyle(
                        fontFamily: 'Opensans',
                        fontSize: 20.0,
                      )),
                  Icon(Icons.more_horiz, color: Colors.black)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              height: 300.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildCard(
                      'eTricks', '4.1', 'assets/etricks_2.jpg'),
                  _buildCard(
                      'Virtual Fitness Coach', '3.8', 'assets/virtual_coach.jpeg'),
                  _buildCard(
                      'eSport Idole', '4.8', 'assets/esport.png')
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Deine Mitwirkung zählt!',
                      style: TextStyle(
                        fontFamily: 'Opensans',
                        fontSize: 20.0,
                        color: Color(0xFFD30029)
                      )),
                  Icon(Icons.more_horiz, color: Colors.black)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 5.0),
            child: Container(
              height: 150.0,
              //width: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildCard_1(
                      'Unterstütze lokale Bäckerein', '', 'assets/pic_4.jpg'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildCard(String title, String rating, String imgPath) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DetailPage()));
          },
          child: Stack(
            children: <Widget>[
              Container(
                height: 275.0,
                width: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover)),
              ),
              //make the shade a bit deeper.
              Container(
                height: 275.0,
                width: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black.withOpacity(0.4)),
              ),
              Positioned(
                top: 10.0,
                left: 10.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 40.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.black.withOpacity(0.2)),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.white, size: 12.0),
                          SizedBox(width: 5.0),
                          Text(
                            rating,
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )),
                    ),
                    SizedBox(width: 50.0),
                    Text(
                      'Mehr',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Opensans'),
                    ),
                    SizedBox(width: 7.0),
                    //this should be an iconbutton in a real app.
                    Icon(Icons.arrow_drop_down, color: Colors.white, size: 25.0)
                  ],
                ),
              ),
              Positioned(
                top: 180.0,
                left: 20.0,
                child: Container(
                  width: 150.0,
                  child: Text(title,
                      style: TextStyle(
                          fontFamily: 'Opensans',
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600)),
                ),
              ),
            ],
          ),
        ));
  }
  _buildCard_1(String title, String rating, String imgPath) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DetailPage()));
          },
          child: Stack(
            children: <Widget>[
              Container(
                height: 275.0,
                width: 380.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover)),
              ),
              //make the shade a bit deeper.
              //Container(
                //height: 275.0,
                //width: 200.0,
                //decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(20.0),
                    //color: Colors.black.withOpacity(0.4)),
              //),
              //Positioned(
                //top: 10.0,
                //left: 10.0,
                //child: Row(
                  //children: <Widget>[
                    //Container(
                      //height: 40.0,
                      //width: 60.0,
                      //decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(20.0),
                          //color: Colors.black.withOpacity(0.2)),
                      //child: Center(
                          //child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        //children: <Widget>[
                          //Icon(Icons.star, color: Colors.white, size: 12.0),
                          //SizedBox(width: 5.0),
                          //Text(
                            //rating,
                            //style: TextStyle(color: Colors.white),
                          //)
                        //],
                      //)),
                    //),
                    //SizedBox(width: 50.0),
                    //Text(
                      //'Mehr',
                      //style: TextStyle(
                          //color: Colors.white, fontFamily: 'Opensans'),
                    //),
                    //SizedBox(width: 7.0),
                    //this should be an iconbutton in a real app.
                    //Icon(Icons.arrow_drop_down, color: Colors.white, size: 25.0)
                  //],
                //),
              //),
              Positioned(
                top: 70.0,
                right: 5.0,
                child: Container(
                  width: 200.0,
                  child: Text(title,
                      style: TextStyle(
                          fontFamily: 'Opensans',
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600)),
                ),
              ),
              //Positioned(
                  //top: 225.0,
                  //left: 10.0,
                  //child: Row(children: [
                    //Text('I was here',
                        //style: TextStyle(
                            //fontFamily: 'Opensans',
                            //fontSize: 15.0,
                            //color: Colors.white,
                            //fontWeight: FontWeight.w600)),
                    //SizedBox(width: 15.0),
                    //Stack(
                      //children: <Widget>[
                        //Container(height: 40.0, width: 100.0),
                        //Container(
                          //height: 40.0,
                          //width: 40.0,
                          //decoration: BoxDecoration(
                              //borderRadius: BorderRadius.circular(20.0),
                              //image: DecorationImage(
                                  //image: AssetImage('assets/profil.jpeg'),
                                  //fit: BoxFit.cover)),
                        //),
                        //Positioned(
                          //left: 30.0,
                          //child: Container(
                            //height: 40.0,
                            //width: 40.0,
                            //decoration: BoxDecoration(
                                //borderRadius: BorderRadius.circular(20.0),
                                //color: Colors.white),
                            //child: Center(
                              //child: Text('+17..',
                                  //style: TextStyle(
                                      //fontSize: 14.0, color: Colors.black)),
                            //),
                          //),
                        //)
                      //],
                    //)
                  //]))
            ],
          ),
        ));
  }
}
