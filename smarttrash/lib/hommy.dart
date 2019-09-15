import 'package:flutter/material.dart';
import 'package:smarttrash/style/theme.dart' as Theme;
import 'place.dart';
import 'static.dart';
import 'trach.dart';

class HomePage2 extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage2> {
  int _bottomNavIndex=0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor:Theme.Colors.loginGradientStart,
         currentIndex: _bottomNavIndex,
         onTap: (int index){
          setState((){
            _bottomNavIndex = index;
            
          });
         },
         
        items: [
          new BottomNavigationBarItem(
            title: new Text(''),
             icon: new Icon(Icons.home)
          ),
          new BottomNavigationBarItem(
            title: new Text(''),
             icon: new Icon(Icons.local_offer)
          ),
          new BottomNavigationBarItem(
            title: new Text(''),
             icon: new Icon(Icons.message)
          ),
          new BottomNavigationBarItem(
            title: new Text(''),
             icon: new Icon(Icons.notifications)
          )

        ],
      ),
      appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Color(0xFF18D191))),
      body: MainContent(
        
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
              child: new Column(
            children: <Widget>[
              new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Row(
                children: <Widget>[
                  new Text(
                    "หน้าหลัก",
                    style: new TextStyle(
                      fontSize: 30.0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              ],
            ),
              
              new SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 2.5, right: 2.5),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Trachpage(),
                                ));
                              },
                            child: new Container(
                              height: 60.0,
                              decoration: new BoxDecoration(
                                  color: Color(0xFFFD7384),
                                  borderRadius: new BorderRadius.circular(5.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: new Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                  ),
                                  new Text('ถังขยะ',
                                      style: new TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                          ),
                        ),
                        ),
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 2.5, right: 2.5),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Trachpage(),
                                ));
                              },
                            child: new Container(
                              height: 60.0,
                              decoration: new BoxDecoration(
                                  color: Color(0XFF2BD093),
                                  borderRadius: new BorderRadius.circular(5.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: new Icon(
                                      Icons.beenhere,
                                      color: Colors.white,
                                    ),
                                  ),
                                  new Text('แจ้งเก็บขยะ',
                                      style: new TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                            ),
                          ),
                        ),
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 2.5, right: 2.5),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Placepage(),
                                ));
                              },
                            child: new Container(
                              height: 60.0,
                              decoration: new BoxDecoration(
                                  color: Color(0XFF53CEDB),
                                  borderRadius: new BorderRadius.circular(5.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: new Icon(
                                      Icons.account_balance,
                                      color: Colors.white,
                                    ),
                                  ),
                                  new Text('สถานที่',
                                      style: new TextStyle(color: Colors.white))
                                ],
                              ),
                              ),
                            ),
                          ),
                        ),
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
             Row(
                children: <Widget>[
                  Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 2.5, right: 2.5),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => StaticPage(),
                                ));
                              },
                            child: new Container(
                              height: 60.0,
                              decoration: new BoxDecoration(
                                  color: Color(0xFFBA68C8),
                                  borderRadius: new BorderRadius.circular(5.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: new Icon(
                                      Icons.equalizer,
                                      color: Colors.white,
                                    ),
                                  ),
                                  new Text('สถิติ',
                                      style: new TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                            ),
                          ),
                        ),
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 2.5, right: 2.5),
                            child: new Container(
                              height: 60.0,
                              decoration: new BoxDecoration(
                                  color: Color(0XFFF1B069),
                                  borderRadius: new BorderRadius.circular(5.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: new Icon(
                                      Icons.art_track,
                                      color: Colors.white,
                                    ),
                                  ),
                                  new Text('ฟีดข่าว',
                                      style: new TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                          ),
                        ),
                ],
              ),
              
            ],
          )),
        )
      ],
        ),
      ),
    );
  }
}
