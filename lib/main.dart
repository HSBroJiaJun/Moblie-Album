import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dreamsong.dart';
import 'prosong.dart';
import 'outsong.dart';
import 'earthsong.dart';


int changeindex=0;
final player = AudioPlayer();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 15, 15, 1),

      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .7,
            child: Stack(
              children: [
                appbar(),
                albumpage()
              ],
            ),
          )
        ],
      )
    );
  }
}

class appbar extends StatefulWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            snap: false,
            backgroundColor: Color.fromRGBO(30, 30, 30, 1),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Mobile Album",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald"),),
              ],
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: 5,top: 2,right: 2,bottom: 2),
              child: Image.asset(
                "image/LOGO.png",
              ),
            ),
          )
        ],
      ),
    );
  }
}

class albumpage extends StatefulWidget {
  const albumpage({Key? key}) : super(key: key);

  @override
  State<albumpage> createState() => _albumpageState();
}

class _albumpageState extends State<albumpage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child:  SizedBox(
                  width: 150,
                  height: 70,
                ),
              ),
            ),
            Expanded(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child:  SizedBox(
                  width: 150,
                  height: 70,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  SizedBox(
                    width: 150,
                    height: 150,
                    child:RaisedButton(
                      child: Image(image: AssetImage("image/dreamAlbum.jpg"),),
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => dreampage()));
                      },
                      color: Colors.transparent,
                      elevation: 10,
                    ),
                  ),
                ),
            ),
            Expanded(
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/proAlbum.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => propage()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                )
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child:  SizedBox(
                  width: 150,
                  height: 150,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/outtabodyAlbum.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outtapage()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ),
            ),
            Expanded(
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/earthboundAlbum.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthpage()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                )
            )
          ],
        ),

      ],
    );
  }
}


class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  double logoOpacity = 1.0;
  @override
  void initState(){
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        logoOpacity = 0.0;
      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              logoOpacity = 0.0;
             });
            },
          child:AnimatedOpacity(
            opacity: logoOpacity,
            duration: Duration(milliseconds: 500),
            child:  Container(
              width: 800,
                height: 800,
                child: Image.asset("image/logoandtext.png")
            ),
            onEnd: (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (
                          BuildContext context)=>MyHomePage()));
            },
        )
      ),
    )
    );
  }
}


class dreampage extends StatefulWidget {
  const dreampage({Key? key}) : super(key: key);

  @override
  State<dreampage> createState() => _dreampageState();
}

class _dreampageState extends State<dreampage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Overview",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          dreambody()
        ],
      ),
    );
  }
}

class dreambody extends StatefulWidget {
  const dreambody({Key? key}) : super(key: key);

  @override
  State<dreambody> createState() => _dreambodyState();
}

class _dreambodyState extends State<dreambody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width:300 ,
              height: 300,
              margin: const EdgeInsets.only(left: 46,top: 46,right: 46,bottom: 20) ,
                child: Image.asset("image/dreamAlbum.jpg"))
          ],
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 46),
              child:Row(
                children: [
                  Text("名稱 :  夢想成真"
                      "\n原作 :  熊仔 Kumachan"
                      "\n            豹子膽 Bowz"
                      "\n唱片公司 :  索尼音樂娛樂"
                      "\n發行日期 :  2018年5月3日 ",style: TextStyle(color: Colors.white,fontSize: 25,)),
                ],
              ),
            ),
            Container(
              width: 280,
              margin: const EdgeInsets.only(top: 50,left: 80),
              child: RaisedButton(
                color: Color.fromRGBO(40, 40, 40, 1),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => dreamsaipage()));
                },
                child: Row(
                  children: <Widget>[
                    Text('Songs and Introduction', style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25),),
                    Icon(Icons.arrow_forward_rounded, color: Colors.white,size: 35,),
                  ],
                ),

            )
            )
          ],
        )
      ],
    );
  }
}


class propage extends StatefulWidget {
  const propage({Key? key}) : super(key: key);

  @override
  State<propage> createState() => _propageState();
}

class _propageState extends State<propage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Overview",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          probody()
        ],
      ),
    );
  }
}

class probody extends StatefulWidget {
  const probody({Key? key}) : super(key: key);

  @override
  State<probody> createState() => _probodyState();
}

class _probodyState extends State<probody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
                width:300 ,
                height: 300,
                margin: const EdgeInsets.only(left: 46,top: 46,right: 46,bottom: 20) ,
                child: Image.asset("image/proAlbum.jpg"))
          ],
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 46),
              child:Row(
                children: [
                  Text("名稱 :  PRO"
                      "\n原作 :  熊仔 Kumachan"
                      "\n唱片公司 :  索尼音樂娛樂"
                      "\n發行日期 :  2020年5月6日 ",style: TextStyle(color: Colors.white,fontSize: 25,height: 2)),
                ],
              ),
            ),
            Container(
                width: 280,
                margin: const EdgeInsets.only(top: 10,left: 80),
                child: RaisedButton(
                  color: Color.fromRGBO(40, 40, 40, 1),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => prosaipage()));
                  },
                  child: Row(
                    children: <Widget>[
                      Text('Songs and Introduction', style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25),),
                      Icon(Icons.arrow_forward_rounded, color: Colors.white,size: 35,),
                    ],
                  ),

                )
            )
          ],
        )
      ],
    );
  }
}


class outtapage extends StatefulWidget {
  const outtapage({Key? key}) : super(key: key);

  @override
  State<outtapage> createState() => _outtapageState();
}

class _outtapageState extends State<outtapage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Overview",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          outtabody()
        ],
      ),
    );
  }
}

class outtabody extends StatefulWidget {
  const outtabody({Key? key}) : super(key: key);

  @override
  State<outtabody> createState() => _outtabodyState();
}

class _outtabodyState extends State<outtabody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
                width:300 ,
                height: 300,
                margin: const EdgeInsets.only(left: 46,top: 46,right: 46,bottom: 20) ,
                child: Image.asset("image/outtabodyAlbum.jpg"))
          ],
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 46),
              child:Row(
                children: [
                  Text("名稱 :  Outta body 靈魂出竅"
                      "\n原作 :  瘦子 E.SO"
                      "\n唱片公司 :  滾石唱片"
                      "\n發行日期 :  2020年7月10日 ",style: TextStyle(color: Colors.white,fontSize: 25,height: 2)),
                ],
              ),
            ),
            Container(
                width: 280,
                margin: const EdgeInsets.only(top: 10,left: 80),
                child: RaisedButton(
                  color: Color.fromRGBO(40, 40, 40, 1),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => outtasaipage()));
                  },
                  child: Row(
                    children: <Widget>[
                      Text('Songs and Introduction', style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25),),
                      Icon(Icons.arrow_forward_rounded, color: Colors.white,size: 35,),
                    ],
                  ),

                )
            )
          ],
        )
      ],
    );
  }
}


class earthpage extends StatefulWidget {
  const earthpage({Key? key}) : super(key: key);

  @override
  State<earthpage> createState() => _earthpageState();
}

class _earthpageState extends State<earthpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Overview",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          earthbody()
        ],
      ),
    );
  }
}

class earthbody extends StatefulWidget {
  const earthbody({Key? key}) : super(key: key);

  @override
  State<earthbody> createState() => _earthbodyState();
}

class _earthbodyState extends State<earthbody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
                width:300 ,
                height: 300,
                margin: const EdgeInsets.only(left: 46,top: 46,right: 46,bottom: 20) ,
                child: Image.asset("image/earthboundAlbum.jpg"))
          ],
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 46),
              child:Row(
                children: [
                  Text("名稱 :  EARTHBOUND"
                      "\n原作 :  瘦子 E.SO"
                      "\n唱片公司 :  滾石唱片"
                      "\n發行日期 :  2022年2月16日 ",style: TextStyle(color: Colors.white,fontSize: 25,height: 2.0)),
                ],
              ),
            ),
            Container(
                width: 280,
                margin: const EdgeInsets.only(top: 10,left: 80),
                child: RaisedButton(
                  color: Color.fromRGBO(40, 40, 40, 1),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => earthsaipage()));
                  },
                  child: Row(
                    children: <Widget>[
                      Text('Songs and Introduction', style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25),),
                      Icon(Icons.arrow_forward_rounded, color: Colors.white,size: 35,),
                    ],
                  ),

                )
            )
          ],
        )
      ],
    );
  }
}


class dreamsaipage extends StatefulWidget {
  const dreamsaipage({Key? key}) : super(key: key);

  @override
  State<dreamsaipage> createState() => _dreamsaipageState();
}

class _dreamsaipageState extends State<dreamsaipage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25,left: 25,right: 25,bottom: 25),
              child:ExpandableText(
                "此張專輯內容講述一位憤世嫉俗的地下饒舌歌手Bowz，從無名到成名之後失去自我的過程。"
                  "專輯名稱可以拆分為4種解讀方式，同時也是章節名稱，也代表著Bowz「夢想成真」的過程"
                  "\n"
                  "\nChap.1 夢．想．成真"
                  "\n不得志地下饒舌歌手Bowz豹子膽，對主流音樂忿忿不平，夢想著改變流行音樂。"
                  "\n"
                  "\nChap.2 夢想．成．真"
                  "\n豹子膽暴紅後，肆無忌憚享受成名快感，累積著業障。"
                  "\n"
                  "\nChap.3 夢．想成．真\n豹子膽的業果逐漸將他反噬，而夢境終於串成驚人的真相。"
                  "\n"
                  "\nFinal Chap. 夢．想．成．真", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 19,height: 2),
                expandText: '更多',
                collapseText: '收起',
                maxLines: 6,
                linkColor: Colors.blue,
              ),
            ),
            Container(
              height: 50,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
              child: Text("   Songs",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
            ),
            Row(
              children: [
                Container(
                    height: 90,
                    width: 160,
                    child:RaisedButton(
                      child: Image(image: AssetImage("image/dream1.jpg"),),
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage1()));
                      },
                      color: Colors.transparent,
                      elevation: 10,
                    ),
                  ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("給愛麗絲 Für Elise"
                        "\n                                   4:49",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage1()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/dream2.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage2()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("禁愛令 Antilove"
                        "\n                                   4:55",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage2()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/dream3.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage3()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("走紅毯 Red Carpet"
                        "\n                                   3:23",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage3()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/dream4.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage4()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("假朋友真兄弟 FFRH"
                        "\n                                   4:39",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage4()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/dream5.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage5()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("大頭大頭 Big Head"
                        "\n                                   4:51",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage5()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/dream6.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage6()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("夢中夢 \nDream within a Dream"
                        "\n                                   5:01",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage6()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/dream7.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage7()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("卡提諾 CK101"
                        "\n                                   4:12",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage7()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/dream8.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage8()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("失真 Derealization"
                        "\n                                   4:00",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage8()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/dream9.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage9()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("...夢中夢中夢中夢中... Endless Dreams"
                        "\n                                   3:48",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage9()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/dream10.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage10()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("夢∙想∙成∙真"
                        "\n                                   5:01",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dreamSongpage10()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
          ],
        ),
      ),
    );
  }
}


class prosaipage extends StatefulWidget {
  const prosaipage({Key? key}) : super(key: key);

  @override
  State<prosaipage> createState() => _prosaipageState();
}

class _prosaipageState extends State<prosaipage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25,left: 25,right: 25,bottom: 25),
              child:ExpandableText(
                "若說第一張專輯《∞無限》是夢想的起點，"
                    "帶著對未來的不確定性，彼時熊仔以一個「學霸Rapper」橫空出世，"
                    "攫獲眾人視野。那《夢想成真》就是理想與現實的交錯的狂想曲，"
                    "熊仔透過虛擬角色「豹子膽」，以中二劇情開場帶著上車的聽眾們經歷一場遠超乎他們預期的深度哲學探討。"
                    "而當夢想成為了《PRO》，理想與現實邊界模糊，才發現做自己喜歡的事不代表一直都能很快樂，"
                    "不再是因喜歡而去做，而是不得不做，這種職業倦怠，光靠燃燒熱情來支撐，還能走多遠呢？"
                    "\n"
                    "\n《PRO》專輯，將以熊仔最擅長的黑色幽默，直白地向大眾拋出疑問，"
                    "希望能讓聽者開始反思，在夢想職業化後，日復一日、年復一年，生活像一張磨砂紙，"
                    "磨去了我們的熱誠與熱愛，下一步又將往何處？光鮮亮麗的職業背後，如何面對挫折與職業倦怠？"
                    "熊仔和我們也還在思考，也或許這個問題至始至終都無法解答，那就來聽聽熊仔在《PRO》中的苦笑人生觀。", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 19,height: 2),
                expandText: '更多',
                collapseText: '收起',
                maxLines: 6,
                linkColor: Colors.blue,
              ),
            ),
            Container(
              height: 50,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
              child: Text("   Songs",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/pro1.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage1()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("自信 Confidence"
                        "\n                                   4:25",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage1()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/pro2.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage2()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("星座學家 \nDear Astrologist"
                        "\n                                   4:04",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage2()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/pro3.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage3()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("哪個胖子 What Fat Dude"
                        "\n                                   3:05",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage3()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/pro4.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage4()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("啞巴吃黃蓮 \nCensored Suffocation"
                        "\n                                   4:47",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage4()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/pro5.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage5()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("風頭上 Waveriders"
                        "\n                                   3:05",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage5()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/pro6.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage6()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("哥 BRO"
                        "\n                                   4:17",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage6()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/pro7.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage7()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("流動interlude\nnumbflow interlude"
                        "\n                                   2:12",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage7()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/pro8.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage8()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("能火 Zenfire"
                        "\n                                   3:45",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage8()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/pro9.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage9()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("才子 Talented"
                        "\n                                   4:01",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage9()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/pro10.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage10()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("鬧鈴與愛歌 Favorite Alarm"
                        "\n                                   4:04",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => proSongpage10()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
          ],
        ),
      ),
    );
  }
}


class earthsaipage extends StatefulWidget {
  const earthsaipage({Key? key}) : super(key: key);

  @override
  State<earthsaipage> createState() => _earthsaipageState();
}

class _earthsaipageState extends State<earthsaipage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25,left: 25,right: 25,bottom: 25),
              child:ExpandableText(
                "有沒有想過當有一天，人類不再居住在地球上"
                "會是怎樣的人，來對你講述發生在這顆星球上"
                "各式荒唐無理的行為、無數囚困人心的籠牢"
                "無止境的利益與衝突、對人外貌與身材的綁架"
                "這無數無盡的荒謬與真實，獻給所有被地球人所囚禁的地球人！"
                    "\n"
                    "\n流暢翻玩並創造每一個獨特的聲響與態度，"
                "使用全球音樂中大量取樣與拼貼，"
                "搭配完全超乎想像的曲風融合與豐富的節奏元素，"
                "帶領聽眾一下在非洲看大象，下一刻又到南美洲盡情跳舞，"
                "瘦子的創作視角反覆切換都市與大自然之間，"
                "不斷凸顯人類社會中的醜陋與矛盾的同時，"
                "卻更回到音樂與創作本身的美好與單純。", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 19,height: 2),
                expandText: '更多',
                collapseText: '收起',
                maxLines: 6,
                linkColor: Colors.blue,
              ),
            ),
            Container(
              height: 50,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
              child: Text("   Songs",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/earth1.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage1()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("Way Up"
                        "\n                                   4:40",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage1()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/earth2.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage2()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("祖先"
                        "\n                                   2:19",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage2()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/earth3.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage3()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("達文西 Da Vinci"
                        "\n                                   2:58",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage3()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/earth4.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage4()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("People"
                        "\n                                   3:41",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage4()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/earth5.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage5()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("Tiffany"
                        "\n                                   3:05",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage5()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/earth6.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage6()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("Lucid Dream"
                        "\n                                   4:01",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage6()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/earth7.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage7()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("Big Girl"
                        "\n                                   3:35",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage7()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/earth8.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage8()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("我的癮 Addiction"
                        "\n                                   4:31",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage8()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/earth9.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage9()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("妹妹 Mei Mei"
                        "\n                                   3:47",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage9()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/earth10.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage10()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("Married To The Game"
                        "\n                                   4:00",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage10()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/earth11.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage11()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("Amazing"
                        "\n                                   5:03",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => earthSongpage11()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
          ],
        ),
      ),
    );
  }
}


class outtasaipage extends StatefulWidget {
  const outtasaipage({Key? key}) : super(key: key);

  @override
  State<outtasaipage> createState() => _outtasaipageState();
}

class _outtasaipageState extends State<outtasaipage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25,left: 25,right: 25,bottom: 25),
              child:ExpandableText(
                "全球暖化、森林大火、貧富不均、病毒蔓延，"
                "無法解決的事情堆積如山，不能排解的寂寞席捲而來，"
                "想逃離每刻的恐懼焦慮，想終結每天的生活苦悶，"
                "最好的辦法就是打開音樂，讓自己靈魂出竅一下！"
                    "\n"
                    "\n有人說饒舌歌手是社會觀察家，透過音樂唱出世俗紅塵的大小事，"
                "音樂是他們的生命歷程，五感則是他們的靈感來源，"
                "在海灘進化生命、觀察透徹、五官全開的瘦子E.SO，"
                "帶著更全面、更自我、更深刻、更不設限的音樂創作回來了！"
                "以嘻哈為基底，融合R&B、Neo Soul與Gospel的多元曲風元素，"
                "加入爵士和弦、Disco、House風格、Afrobeat與Trap節奏調味，"
                "把人生大小事比喻成簡單易懂的男女愛情互動，"
                "卻意外點出現代人心中許多無奈與諷刺現實。", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 19,height: 2),
                expandText: '更多',
                collapseText: '收起',
                maxLines: 6,
                linkColor: Colors.blue,
              ),
            ),
            Container(
              height: 50,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
              child: Text("   Songs",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/out1.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage1()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("Don't Worry About Me"
                        "\n                                   3:18",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage1()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/out2.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage2()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("Follow You"
                        "\n                                   6:33",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage2()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/out3.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage3()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("Hello Beautiful"
                        "\n                                   3:23",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage3()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/out4.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage4()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("CHANGE"
                        "\n                                   3:20",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage4()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/out5.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage5()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("稱讚她的美 PRAISE"
                        "\n                                   3:20",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage5()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/out6.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage6()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("I Wish I Was There"
                        "\n                                   2:56",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage6()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/out7.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage7()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("Money Bag"
                        "\n                                   3:23",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage7()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/out8.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage8()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("So Good To Me"
                        "\n                                   2:37",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage8()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/out9.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage9()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("Something I Don't Need"
                        "\n                                   2:55",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage9()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/out10.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage10()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("她沒在看我\nShe Ain’t Watchin’"
                        "\n                                   4:48",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage10()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/out11.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage11()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("伯父 Bo Fu"
                        "\n                                   4:35",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage11()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/out12.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage12()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("WAIT"
                        "\n                                   3:23",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage12()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 160,
                  child:RaisedButton(
                    child: Image(image: AssetImage("image/out13.jpg"),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage13()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
                Container(
                  height: 90,
                  width:230,
                  margin: const EdgeInsets.only(left: 0),
                  child:RaisedButton(
                    child: Text("太陽 When The Cloudless Day Comes"
                        "\n                                   3:33",
                        style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 20,)),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => outSongpage13()));
                    },
                    color: Colors.transparent,
                    elevation: 10,
                  ),
                ),
              ],
            ),
            Container(
              height: 3,
              width: 600,
              color: Color.fromRGBO(30, 30, 30, 1),
            ),
          ],
        ),
      ),
    );
  }
}

