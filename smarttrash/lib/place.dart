import 'package:flutter/material.dart';
import 'package:smarttrash/style/theme.dart' as Theme;
import 'place/sc.dart';
import 'place/ct1.dart';
import 'place/ct2.dart';
import 'place/acb.dart';
import 'place/clb2.dart';
import 'place/clb3.dart';
import 'place/clb4.dart';
import 'place/clb5.dart';
import 'place/lib.dart';

class Placepage extends StatefulWidget {
  @override
  _PlacepageState createState() => new _PlacepageState();
}

class _PlacepageState extends State<Placepage> {
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
                    "สถานที่",
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
                    child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Scpage(),
                                ));
                              },
                    child: new Container(
                      height: 100.0,
                      decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(100.0),
                          color: Colors.purple[900]),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          new Text("ตึกวิจัย",
                              style: new TextStyle(color: Colors.white))
                        ],
                      ),
                      
                    ),
                  )),
                  ),
                  new Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Ct2page(),
                                ));
                              },
                    child: new Container(
                      height: 100.0,
                      decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(100.0),
                          color: Colors.purple[800]),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          new Text("โรงอาหาร2",
                              style: new TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  )),
                  ),
                  new Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Libpage(),
                                ));
                              },
                    child: new Container(
                      height: 100.0,
                      decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(100.0),
                          color: Colors.purple[700]),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          new Text("ห้องสมุด",
                              style: new TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  )),
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
                    child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Clb5page(),
                                ));
                              },
                    child: new Container(
                      height: 100.0,
                      decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(100.0),
                          color: Colors.purple[600]),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          new Text("CLB5",
                              style: new TextStyle(color: Colors.white))
                        ],
                      ),
                      
                    ),
                  )),
                  ),
                  new Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Clb4page(),
                                ));
                              },
                    child: new Container(
                      height: 100.0,
                      decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(100.0),
                          color: Colors.purple),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          new Text("CLB4",
                              style: new TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  )),
                  ),
                  new Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Clb2page(),
                                ));
                              },
                    child: new Container(
                      height: 100.0,
                      decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(100.0),
                          color: Colors.purple[400]),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          new Text("CLB2",
                              style: new TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  )),
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
                    child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Clb3page(),
                                ));
                              },
                    child: new Container(
                      height: 100.0,
                      decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(100.0),
                          color: Colors.purple[300]),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          new Text("CLB3",
                              style: new TextStyle(color: Colors.white))
                        ],
                      ),
                      
                    ),
                  )),
                  ),
                  new Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Acbpage(),
                                ));
                              },
                    child: new Container(
                      height: 100.0,
                      decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(100.0),
                          color: Colors.purple[200]),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          new Text("ACB",
                              style: new TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  )),
                  ),
                  new Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Ct1page(),
                                ));
                              },
                    child: new Container(
                      height: 100.0,
                      decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(100.0),
                          color: Colors.purple[100]),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          new Text("โรงอาหารหอใน",
                              style: new TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  )),
                  ),
                ],
              ),
            ],
          )),
        )
      ],
    );
  }
}