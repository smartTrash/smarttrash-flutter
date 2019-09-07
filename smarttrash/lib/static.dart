import 'package:flutter/material.dart';
import 'package:smarttrash/style/theme.dart' as Theme;
import 'static1.dart';

class StaticPage extends StatefulWidget {
  @override
  _StaticPageState createState() => new _StaticPageState();
}

class _StaticPageState extends State<StaticPage> {
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
                  new Container(
                    child:Image.asset('assets/charts1.png',),
                    padding:
                                const EdgeInsets.only(top: 2.5, right: 20.5),
                  ),
                  new Text(
                    "สถิติ",
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
                                  builder: (context) => StaticPage1(),
                                ));
                              },
                            child: new Container(
                              height: 60.0,
                              decoration: new BoxDecoration(
                                  color: Color(0xFF00BFA5),
                                  borderRadius: new BorderRadius.circular(100.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: new Icon(
                                      Icons.assessment,
                                      color: Colors.white,
                                    ),
                                  ),
                                  new Text('ปริมาณขยะของแต่ละที่',
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
                                  color: Color(0XFF1DE9B6),
                                  borderRadius: new BorderRadius.circular(100.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: new Icon(
                                      Icons.assessment,
                                      color: Colors.white,
                                    ),
                                  ),
                                  new Text('จำนวนแจ้งเก็บขยะ',
                                      style: new TextStyle(color: Colors.white))
                                ],
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
                                  color: Color(0XFF64FFDA),
                                  borderRadius: new BorderRadius.circular(100.0)),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: new Icon(
                                      Icons.assessment,
                                      color: Colors.white,
                                    ),
                                  ),
                                  new Text('อะไรอีกอ่ะ ยังไม่คิด',
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
