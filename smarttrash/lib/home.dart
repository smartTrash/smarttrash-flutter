import 'package:flutter/material.dart';
import 'package:smarttrash/style/theme.dart' as Theme;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return new ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
              child: new Column(
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
              new SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: new Container(
                      height: 100.0,
                      decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(5.0),
                          color: Color(0xFFFD7384)),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          new Text("ถังขยะ",
                              style: new TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  )),
                  new Expanded(
                      child: new Container(
                    height: 100.0,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(bottom: 2.5, right: 2.5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Color(0XFF2BD093),
                                  borderRadius: new BorderRadius.circular(5.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: new Icon(
                                      Icons.local_offer,
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
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 2.5, right: 2.5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Color(0XFFFC7B4D),
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
                                  new Text('Service',
                                      style: new TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
                  new Expanded(
                      child: new Container(
                    height: 100.0,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 2.5, bottom: 2.5),
                            child: new Container(
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
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2.5, top: 2.5),
                            child: new Container(
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
                  )),
                ],
              ),
              
            ],
          )),
        )
      ],
    );
  }
}
