import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:audioplayers/audioplayers.dart';
import 'main.dart';

class outSongpage1 extends StatefulWidget {
  const outSongpage1({Key? key}) : super(key: key);

  @override
  State<outSongpage1> createState() => _outSongpage1State();
}

class _outSongpage1State extends State<outSongpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
        actions: <Widget>[
          Padding(padding:
          EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                if(changeindex==0)
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=1;
                      });
                      await player.play(AssetSource('outS1.mp3'));
                    },
                    icon: Icon(Icons.play_arrow,size: 40,),
                  )
                else
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=0;
                      });
                      await player.stop();
                    },
                    icon: Icon(Icons.stop,size: 40,),
                  ),
              ],
            ),


          ),

        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 220.5,
                  width: 392,
                  padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                  child: Image(image: AssetImage("image/out1.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【Don't Worry About Me】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 6,
                    linkColor: Colors.blue,
                  ),

                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n詞：陳昱榕"
                        "\n曲：陳昱榕"
                        "\n製作人：高仰辰 Tipsy Kao"
                        "\n編曲：SJIN 史今"
                        "\n和聲編寫：P.i.N范品頤/靛藍音程工作室"
                        "\n和聲：P.i.N范品頤"
                        "\n錄音師： 康家豪 Caxton Kang/高仰辰 Tipsy Kao"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：林清智 Zachary Lin"
                        "\n混音工作室：本色錄音室 True Color Studio"
                        "\n"
                        "\n格局放大視野放寬《Don’t Worry About Me》還有更多事值得關心"
                        "\n專輯的 Intro 禱告詞後緊接的超鬆開門歌，由違法 SJIN 史今操刀編曲。嘿，不用擔心我去哪我在幹嘛，怎麼還沒出專輯，我一樣偶爾在巷口的小吃店吃午餐。但我希望你們關心世界上正在發生的需要關注的事情，疫情不斷蔓延、森林不停燃燒、弱勢還在掙扎、戰爭依舊無情…。"
                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 50,
                  width: 600,
                  color: Color.fromRGBO(30, 30, 30, 1),
                  child: Text("   Lyric",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n我還是紅麵線 肉圓當午飯"
                        "\n黑白切再加顆魯蛋"
                        "\n夏天多的蒼蠅依然趕不散"
                        "\n木柵的8月We all doing fine"
                        "\n"
                        "\n脫掉口罩希望沒人注意"
                        "\n他們靠近我就知道是你"
                        "\n我的表妹結婚幫我錄個視頻"
                        "\n我說沒有問題如果換作是你"
                        "\n"
                        "\n不敢看新聞 這個世界亂的 想法注射"
                        "\n不想去恨 大家同意的 那又如何"
                        "\n製造更多仇恨 更多暴力 怎會有用呢"
                        "\n雖然我們不一樣 "
                        "\nBut why we hate each other"
                        "\n"
                        "\n想改變成見 每個人都有不同立場"
                        "\n這個世界 變成權力者的戰場"
                        "\n打開視野 許多弱勢正在盼望"
                        "\n總被忽略 從來不會是焦點"
                        "\n"
                        "\nDon’t worry about me"
                        "\nDon’t worry about me"
                        "\nDon’t worry about me"
                        "\n"
                        "\nI’m worried about you "
                        "\nI’m worried about you "
                        "\nI’m worried about you "
                        "\n"
                        "\nDon’t worry about me"
                        "\nDon’t worry about me"
                        "\nDon’t worry about me"
                        "\n"
                        "\nI’m worried about you "
                        "\nI’m worried about you "
                        "\nI’m worried about you "
                        "\n"
                        "\n請記得"
                        "\n我曾給你的美好"
                        "\n轉換成"
                        "\n每一天"
                        "\n請記得"
                        "\n也許你就是解藥"
                        "\nSo keep up"
                        "\nMake it change"
                        "\n"
                        "\n今年的夏天來的早 冬天日子少"
                        "\n科技讓人類活的老 但孩子卻又生得少"
                        "\n森林大火繼續蔓延燒 動物努力跑"
                        "\n當然這些都無關選舉所以新聞都沒報"
                        "\n"
                        "\n不只孩子的病痛 They broke I know I saw"
                        "\n住不起的高樓 They lost nowhere to go"
                        "\n了解我的朋友 那也 曾經 是我"
                        "\n人類的價值是能夠感受 彼此 的痛"
                        "\n"
                        "\n不要淨說大道理 不然這首沒人聽了"
                        "\n他說講得倒容易 但人心總是冰冷"
                        "\n別拿愛來當武器 你一槍被人斃了"
                        "\n但愛生生不息 你還有多少軍人"
                        "\n"
                        "\n偶像崇拜 偶像崇拜 沒想到有天偶像是我"
                        "\n如果有天我也沖昏頭 請麻煩你提醒我"
                        "\n千萬寵愛 千萬寵愛 能被愛是多麼的英勇"
                        "\n沒有人是完美的英雄 請麻煩你原諒我"
                        "\n"
                        "\nDon’t worry about me"
                        "\nDon’t worry about me"
                        "\nDon’t worry about me"
                        "\nI’m worried about you "
                        "\nI’m worried about you "
                        "\nI’m worried about you "
                        "\n"
                        "\nDon’t worry about me"
                        "\nDon’t worry about me"
                        "\nDon’t worry about me"
                        "\nI’m worried about you "
                        "\nI’m worried about you "
                        "\nI’m worried about you "
                        "\n"
                        "\n請記得"
                        "\n我曾給你的美好"
                        "\n轉換成"
                        "\n每一天"
                        "\n請記得"
                        "\n也許你就是解藥"
                        "\nSo keep up"
                        "\nMake it change"
                        "\n請記得"
                        "\n我曾給你的美好"
                        "\n轉換成"
                        "\n每一天"
                        "\n請記得"
                        "\n也許你就是解藥"
                        "\nSo keep up"
                        "\nMake it change"

                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22,),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class outSongpage2 extends StatefulWidget {
  const outSongpage2({Key? key}) : super(key: key);

  @override
  State<outSongpage2> createState() => _outSongpage2State();
}

class _outSongpage2State extends State<outSongpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
        actions: <Widget>[
          Padding(padding:
          EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                if(changeindex==0)
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=1;
                      });
                      await player.play(AssetSource('outS2.mp3'));
                    },
                    icon: Icon(Icons.play_arrow,size: 40,),
                  )
                else
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=0;
                      });
                      await player.stop();
                    },
                    icon: Icon(Icons.stop,size: 40,),
                  ),
              ],
            ),


          ),

        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 220.5,
                  width: 392,
                  padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                  child: Image(image: AssetImage("image/out2.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【Follow You】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 6,
                    linkColor: Colors.blue,
                  ),

                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n詞：陳昱榕"
                        "\n曲：陳昱榕"
                        "\n製作人：高仰辰 Tipsy Kao/Black Doe"
                        "\n編曲：BlackDoe"
                        "\n錄音師：康家豪 Caxton Kang"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：陳文駿 AJ Chen"
                        "\n混音工作室：強力錄音室 Mega Force Studio"
                        "\n"
                        "\n像格林童話般包裹糖衣的現代恐怖愛情故事《Follow You》"
                        "\n在網路的世界裡，有多少關注多少讚，就有多少快樂還有隨之而來的更多不快樂。嘻哈基底揉合 R&B 佐上 Trap 的節奏 ，這故事彷彿有點浪漫卻又有點毛骨悚然，Follow you  就好像真的跟著妳，所有人都知道妳所有的事，穿什麼吃什麼做什麼去哪裡。但在每一個打心與按讚背後，是否就是一個又一個，你生活的偷窺狂，正在現實生活中 Follow You? 瘦子靈魂出竅 MV 四部曲最終章，導演謝乾乾將把一切破碎線索串連成一個完整故事，告訴聽眾關於人生中的虛擬與真實調配比例錯誤，將產生多麼可怕的驚悚後果。"
                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 50,
                  width: 600,
                  color: Color.fromRGBO(30, 30, 30, 1),
                  child: Text("   Lyric",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n她長髮 大波浪"
                        "\n常回眸看鏡頭"
                        "\n曬不同 的陽光"
                        "\n她好像常出國"
                        "\n她蹲了 幾個squat"
                        "\n發現我愛運動"
                        "\n發現我愛運動"
                        "\n發現我愛運動"
                        "\n"
                        "\n她長髮 大波浪"
                        "\n常回眸看鏡頭"
                        "\n曬不同 的陽光"
                        "\n她好像常出國"
                        "\n她蹲了 幾個squat"
                        "\n發現我愛運動"
                        "\n發現我愛運動"
                        "\n發現我愛運動"
                        "\n"
                        "\n有多少個想妳的夜"
                        "\n看妳人還在外面"
                        "\n我們都住在同一個台北市裡面"
                        "\n永遠都見不到面"
                        "\n身邊的朋友都不懂"
                        "\n我一個字都不想要說"
                        "\n別來分享我的糖果"
                        "\n不能出差錯"
                        "\n"
                        "\nI’m a creep I’m a weirdo"
                        "\n不屬於這 快趕我走"
                        "\nI’m a creep I’m a weirdo"
                        "\n不屬於這 快趕我走"
                        "\n"
                        "\nI will follow you"
                        "\n"
                        "\n(I don’t wanna change you baby)"
                        "\n(繞了一圈回到原點)"
                        "\n"
                        "\n當所有人都就寢"
                        "\n只有我在等酒醒"
                        "\n求妳給我點同情"
                        "\n妳不認識我"
                        "\n"
                        "\n拇指hold住妳story"
                        "\n彷彿與妳在同行"
                        "\n一個人玩著遊戲"
                        "\nEeny meeny miny moe"
                        "\n"
                        "\n告訴妳我想妳"
                        "\n一秒鐘被人海淹沒"
                        "\n放在那的訊息"
                        "\n不知道妳是否看到就滑過"
                        "\n妳的人正在附近"
                        "\n能不能 讓我靠近點"
                        "\n原諒我 沒出息"
                        "\n這種愛我感到丟臉"
                        "\nI’m a creep I’m a weirdo"
                        "\n不屬於這 快趕我走"
                        "\nI’m a creep I’m a weirdo"
                        "\n不屬於這 快趕我走"
                        "\n"
                        "\nI will follow you"
                        "\nI will follow you"
                        "\nI will follow you"
                        "\nI will follow you girl I fall in love with you"
                        "\n"
                        "\n發光的一幕"
                        "\n看得多投入"
                        "\n露背晚禮服"
                        "\n想碰妳肌膚"
                        "\n別人的媳婦"
                        "\n讓人多嫉妒"
                        "\n別人的媳婦"
                        "\n讓人多嫉妒"

                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22,),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class outSongpage3 extends StatefulWidget {
  const outSongpage3({Key? key}) : super(key: key);

  @override
  State<outSongpage3> createState() => _outSongpage3State();
}

class _outSongpage3State extends State<outSongpage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
        actions: <Widget>[
          Padding(padding:
          EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                if(changeindex==0)
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=1;
                      });
                      await player.play(AssetSource('outS3.mp3'));
                    },
                    icon: Icon(Icons.play_arrow,size: 40,),
                  )
                else
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=0;
                      });
                      await player.stop();
                    },
                    icon: Icon(Icons.stop,size: 40,),
                  ),
              ],
            ),


          ),

        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 220.5,
                  width: 392,
                  padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                  child: Image(image: AssetImage("image/out3.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【Hello Beautiful】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 6,
                    linkColor: Colors.blue,
                  ),

                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n尚未釋出"
                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 50,
                  width: 600,
                  color: Color.fromRGBO(30, 30, 30, 1),
                  child: Text("   Lyric",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\nHello Beautiful,Hello Beautiful,Hello Beautiful"
                        "\nI see nothing wrong"
                        "\nSee no nothing wrong"
                        "\nSee no nothing wrong"
                        "\nHello Beautiful,Hello Beautiful,Hello Beautiful"
                        "\nI see nothing wrong"
                        "\nSee no nothing wrong"
                        "\nSee no nothing wrong"
                        "\n"
                        "\n修著照片"
                        "\n推了推長腿"
                        "\n修著照片"
                        "\n推了推胸"
                        "\n修著照片"
                        "\n推了推臀圍"
                        "\n推了下巴 推掉魚尾"
                        "\n"
                        "\n他們永遠覺得自己不夠漂亮"
                        "\n幫她拍照的男人都是勝利組用著存款較量"
                        "\n男人包下每個異國之旅就能得逞"
                        "\n不能說的秘密 照片裡面只有一個人"
                        "\n她記不得該信的人 當心跳在加速"
                        "\n到了泰國拜她信的神 she feels like déjà vu"
                        "\n身邊都是精挑細選的姐妹"
                        "\n她說醜的不是我姐妹"
                        "\n看不出來嗎 我們長的沒血緣"
                        "\n什麼都不吃她覺得自己胖"
                        "\n懶女人都修圖不上健身房"
                        "\n她的理由運動會讓她變壯"
                        "\nGoogle 大神賜我美麗的秘方"
                        "\n"
                        "\nHello Beautiful,Hello Beautiful,Hello Beautiful"
                        "\nI see nothing wrong"
                        "\nSee no nothing wrong"
                        "\nSee no nothing wrong"
                        "\nHello Beautiful,Hello Beautiful,Hello Beautiful"
                        "\nI see nothing wrong"
                        "\nSee no nothing wrong"
                        "\nSee no nothing wrong"
                        "\n修著照片"
                        "\n推了推長腿"
                        "\n修著照片"
                        "\n推了推胸"
                        "\n修著照片"
                        "\n推了推臀圍"
                        "\n推了下巴 推掉魚尾"
                        "\n"
                        "\n妳那一片魔鏡"
                        "\n只會越照越近"
                        "\n當妳瞇著眼睛"
                        "\n發現哪不對勁"
                        "\n妳找出問題"
                        "\n然後解決問題"
                        "\n其實妳的問題"
                        "\n是妳沒有問題"
                        "\n"
                        "\n她說女人是可塑的"
                        "\n不過需要投資"
                        "\n不然男人多麼壞阿"
                        "\n看膩了就想要偷吃"
                        "\n在我同意妳的同時"
                        "\n已經被妳眼神控制"
                        "\n多諷刺 這城市 像籠子 都關著性別的歧視"
                        "\n那面孔 我只期待妳發自內心的笑容"
                        "\n但願那些手術沒讓妳變驕縱"
                        "\n該知道妳需要一個對的人寵"
                        "\n美的動容"
                        "\nHello Beautiful,Hello Beautiful,Hello Beautiful"
                        "\nI see nothing wrong"
                        "\nSee no nothing wrong"
                        "\nSee no nothing wrong"
                        "\n"
                        "\nWe are beautiful"
                        "\n管別人怎麼說"
                        "\n有人會愛著我"
                        "\n妳能prove them wrong"
                        "\nYou are beautiful"
                        "\n依然能夠閃爍"
                        "\n我就喜歡妳肉"
                        "\n妳能prove them wrong"
                        "\n"
                        "\n妳那一片魔鏡"
                        "\n只會越照越近"
                        "\n當妳瞇著眼睛"
                        "\n發現哪不對勁"
                        "\n妳找出問題"
                        "\n然後解決問題"
                        "\n其實妳的問題"
                        "\n是妳沒有問題"
                        "\n"
                        "\n妳那一片魔鏡"
                        "\n只會越照越近"
                        "\n當妳瞇著眼睛"
                        "\n發現哪不對勁"
                        "\n妳找出問題"
                        "\n然後解決問題"
                        "\n其實妳的問題"
                        "\n是妳沒有問題"

                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22,),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class outSongpage4 extends StatefulWidget {
  const outSongpage4({Key? key}) : super(key: key);

  @override
  State<outSongpage4> createState() => _outSongpage4State();
}

class _outSongpage4State extends State<outSongpage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
        actions: <Widget>[
          Padding(padding:
          EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                if(changeindex==0)
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=1;
                      });
                      await player.play(AssetSource('outS4.mp3'));
                    },
                    icon: Icon(Icons.play_arrow,size: 40,),
                  )
                else
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=0;
                      });
                      await player.stop();
                    },
                    icon: Icon(Icons.stop,size: 40,),
                  ),
              ],
            ),


          ),

        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 220.5,
                  width: 392,
                  padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                  child: Image(image: AssetImage("image/out4.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【CHANGE】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 6,
                    linkColor: Colors.blue,
                  ),

                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n詞：陳昱榕"
                        "\n曲：陳昱榕"
                        "\n製作人：高仰辰 Tipsy Kao/Black Doe"
                        "\n編曲：BlackDoe"
                        "\n和聲編寫：Ash.C"
                        "\n和聲：Ash.C"
                        "\n錄音師：高仰辰 Tipsy Kao/康家豪 Caxton Kang"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：林清智 Zachary Lin"
                        "\n混音工作室：本色錄音室 True Color Studio"
                        "\n"
                        "\n擅長將事件與心境擬人化的他挾著新單曲 《CHANGE》回歸，正如字面的意思「改變」，藉由男女間的情愛敘事帶出他對音樂上的轉折，就像歌詞中說的：「音樂如燒好的菜，卻食之無味; 歌詞就像彼此的話題不再，只好幽默當消遣」。也許之前的氣焰讓我們忘記我們愛的是誰，回到原點才驚然發現是始終最愛的是音樂，原來一直溫暖自己的是「愛」與「音樂」的本質，而非那個氣囂喧鬧驚豔眾人的瞬間"
                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 50,
                  width: 600,
                  color: Color.fromRGBO(30, 30, 30, 1),
                  child: Text("   Lyric",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\nI don’t wanna change you baby"
                        "\nPlease don’t try to change me baby"
                        "\nWe loved each other in the first place"
                        "\n現在我們要的是誰"
                        "\nSee I don’t wanna change you baby"
                        "\nPlease don’t try to change me baby"
                        "\n繞了一圈回到原點"
                        "\n要不乾脆換另一位"
                        "\n"
                        "\n妳沒有說話總是低著頭"
                        "\n形同陌路卻還是牽著手 "
                        "\n一朵浮雲我卻想要抓的攏"
                        "\n空氣凝結身邊的路人都變成兵馬俑"
                        "\n妳曾經問我 怎樣才算perfect match"
                        "\n我沒有跟妳說過在我見妳第一面"
                        "\n如今我更不確定 妳想要的改變"
                        "\n我能不能不當妳家人想要的圖片"
                        "\n"
                        "\n我每天對著鏡子練習"
                        "\n襯衫的扣子需要扣到哪裡 才算得體"
                        "\n車裡的音樂清單換掉了 再會了陷阱"
                        "\n我只有國中畢業證書是否不夠配妳"
                        "\n"
                        "\nBaby you don’t need to change"
                        "\nI’m don’t feel no shame"
                        "\n我不需要妳的任何改變我深愛著妳是誰"
                        "\nI’m sorry I was panic以為這樣才是對"
                        "\n忘記什麼讓我們能快樂自私在作祟"
                        "\n"
                        "\nI don’t wanna change you baby"
                        "\nPlease don’t try to change me baby"
                        "\nWe loved each other in the first place"
                        "\n現在我們要的是誰"
                        "\nSee I don’t wanna change you baby"
                        "\nPlease don’t try to change me baby"
                        "\n繞了一圈回到原點"
                        "\n要不乾脆換另一位"
                        "\n"
                        "\n改我的態度"
                        "\n因為妳只想要當妳"
                        "\n會讓妳哭"
                        "\n如果我只做我自己"
                        "\n都是敗訴"
                        "\n兩個人只保護自己"
                        "\nI can’t save you I can’t blame you"
                        "\n"
                        "\n把脖子掐的太緊"
                        "\nWanna run away"
                        "\n妳的問題像猜燈謎"
                        "\n不敢隨便回"
                        "\nYou say you hate me but you love me"
                        "\ngetting complex"
                        "\nYou say you hate me but you love me"
                        "\n哩勒公蝦毀"
                        "\n"
                        "\n燒好的菜 卻食之無味"
                        "\n話題不再 幽默當消遣"
                        "\nBaby it’s fine"
                        "\n不算太壞 感覺能找回來"
                        "\n燒好的菜 卻食之無味"
                        "\n話題不再 幽默當消遣"
                        "\nBaby it’s fine"
                        "\n不算太壞 感覺能找回來"
                        "\n"
                        "\nI don’t wanna change you baby"
                        "\nPlease don’t try to change me baby"
                        "\nWe loved each other in the first place"
                        "\n現在我們要的是誰"
                        "\nSee I don’t wanna change you baby"
                        "\nPlease don’t try to change me baby"
                        "\n繞了一圈回到原點"
                        "\n要不乾脆換另一位"

                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22,),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class outSongpage5 extends StatefulWidget {
  const outSongpage5({Key? key}) : super(key: key);

  @override
  State<outSongpage5> createState() => _outSongpage5State();
}

class _outSongpage5State extends State<outSongpage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
        actions: <Widget>[
          Padding(padding:
          EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                if(changeindex==0)
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=1;
                      });
                      await player.play(AssetSource('outS5.mp3'));
                    },
                    icon: Icon(Icons.play_arrow,size: 40,),
                  )
                else
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=0;
                      });
                      await player.stop();
                    },
                    icon: Icon(Icons.stop,size: 40,),
                  ),
              ],
            ),


          ),

        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 220.5,
                  width: 392,
                  padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                  child: Image(image: AssetImage("image/out5.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【稱讚她的美 PRAISE】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 6,
                    linkColor: Colors.blue,
                  ),

                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n詞：陳昱榕"
                        "\n曲：陳昱榕"
                        "\n製作人：高仰辰 Tipsy Kao"
                        "\n編曲：MCKY 米奇林"
                        "\n錄音師：康家豪 Caxton Kang"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：陳文駿 AJ Chen"
                        "\n混音工作室：強力錄音室 Mega Force Studio"
                        "\n"
                        "\n《稱讚她的美》愛上匿名的讚美，搞什麼卻忘記我就在身邊"
                        "\n妳每天打扮得美美，是給我看，給你自己看，還是給全世界那些不認識的人看？我精心為妳策劃浪漫生日驚喜，妳第一件事必須和全世界打卡分享#好閨蜜，這是我們倆的事，還是全世界的事？每天睡醒就是打開手機、連上網路，彷彿那一刻我們才開始存在。當友情、親情與愛情都逐漸被數位化，生活只剩下一張張社群平台上的照片時，從什麼時候開始，我們都得透過別人的關注，才能確認自己活著；透過別人的讚美，才能肯定自己活得很好，卻忘了身邊那份真實的情感。"
                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 50,
                  width: 600,
                  color: Color.fromRGBO(30, 30, 30, 1),
                  child: Text("   Lyric",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n稱讚她的美 稱讚她的美 稱讚她的美"
                        "\n不曾見過面 不曾見過面 她能為你努力活"
                        "\n我們想變誰 我們想騙誰 騙自己我不寂寞"
                        "\n我們全都寂寞"
                        "\n"
                        "\n稱讚她的美 稱讚她的美 稱讚她的美"
                        "\n不曾見過面 不曾見過面 她能為你努力活"
                        "\n我們想變誰 我們想騙誰 騙自己我不寂寞"
                        "\n我們全都寂寞"
                        "\n"
                        "\n"
                        "\n幫著記錄她的生活 分享每一天的穿著"
                        "\n享受一個人的週末 但有上萬個人拍手"
                        "\n她的美麗不是為我 她沒螢幕裡面活潑"
                        "\n可能我沒認識太多 平常相處都是沈默"
                        "\n"
                        "\n大家在玩抖音 大家都在吃雞"
                        "\n它將我們分離 卻同時在組隊"
                        "\n對她不再熟悉 有時候她傷心"
                        "\n能讓世界擔心 卻不是我安慰"
                        "\n女孩正在分心 吃飯先餵手機"
                        "\n低著頭看視頻 我坐在她對面"
                        "\n多希望吸引她的視線 但她愛上了匿名的讚美"
                        "\n"
                        "\n沒有注意我們正在妥協"
                        "\n她不再留下過夜"
                        "\n一點一點關係正在破滅"
                        "\n每當WIFI再度連線"
                        "\n想霸佔她的 霸佔她的美 "
                        "\n想稱讚她的 稱讚她的美"
                        "\n"
                        "\n稱讚她的美 稱讚她的美 稱讚她的美 "
                        "\n不曾見過面 不曾見過面 她能為你努力活"
                        "\n我們想變誰 我們想騙誰 騙自己我不寂寞"
                        "\n我們全都寂寞 "

                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22,),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class outSongpage6 extends StatefulWidget {
  const outSongpage6({Key? key}) : super(key: key);

  @override
  State<outSongpage6> createState() => _outSongpage6State();
}

class _outSongpage6State extends State<outSongpage6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
        actions: <Widget>[
          Padding(padding:
          EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                if(changeindex==0)
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=1;
                      });
                      await player.play(AssetSource('outS6.mp3'));
                    },
                    icon: Icon(Icons.play_arrow,size: 40,),
                  )
                else
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=0;
                      });
                      await player.stop();
                    },
                    icon: Icon(Icons.stop,size: 40,),
                  ),
              ],
            ),


          ),

        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 220.5,
                  width: 392,
                  padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                  child: Image(image: AssetImage("image/out6.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【I Wish I Was There】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 6,
                    linkColor: Colors.blue,
                  ),

                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n詞：陳昱榕"
                        "\n曲：陳昱榕"
                        "\n製作人：高仰辰 Tipsy Kao"
                        "\n編曲：MCKY 米奇林"
                        "\n吉他：翁光煒 Wico Weng"
                        "\n和聲編寫：P.i.N范品頤/靛藍音程工作室"
                        "\n和聲：P.i.N范品頤"
                        "\n錄音師：康家豪 Caxton Kang/林清智 Zachary Lin"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：陳文駿 AJ Chen"
                        "\n混音工作室：強力錄音室 Mega Force Studio"
                        "\n"
                        "\n送給聽眾的一首情歌《I Wish I Was There》只是希望我在你身邊"
                        "\n由天王天后製作人 MCKY 米奇林親自操刀編曲，以都會性感 Neo soul 風格，細膩描繪一段遠距離的愛情故事。總在舞台上壞壞惹人愛的饒舌歌手，也有他深情溫柔的一面，就算不在聽眾的身邊，也想用歌曲陪伴左右，即使巡迴演出要克服疲倦與時差，也總帶回新的靈感當作紀念品送給聽眾。男人的硬派尊嚴不允許寂寞和思念太輕易廉價流露，受疫情影響無法在現場演出與聽眾見面的瘦子，寫了這樣一首情歌，送給他一直掛在心上最重要的聽眾，說一聲：“ I Wish I Was There ”"
                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 50,
                  width: 600,
                  color: Color.fromRGBO(30, 30, 30, 1),
                  child: Text("   Lyric",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n給我兩個月的時間巡迴就回來"
                        "\nSnap chat 讓我看妳在家畫水彩"
                        "\n我喜歡妳原本的樣子不用為我改"
                        "\nBaby I won’t let you down 我給妳better life"
                        "\n我想要讓妳覺得快樂 我隨時在這 熬夜聊天敗腎"
                        "\n訊息內容太色 有妳在的地方我的場子覺得太熱"
                        "\n四目相對好像旁邊的人都不在這"
                        "\nWe ride or die"
                        "\n昂貴的珠寶妳全都不想戴"
                        "\n當我人在夜店get into a fight"
                        "\nOnly you can hold me down I found my better side"
                        "\n待在屏幕裡的情人朋友常來亂入"
                        "\n只要妳還在聽 我能拋掉所有控訴"
                        "\n有妳我沒有資格抱怨要怎麼動怒"
                        "\n還有多久才能見面講到兩人痛處"
                        "\n"
                        "\nI wish I was there"
                        "\n飛到妳身邊"
                        "\n看妳看的世界"
                        "\n台北終於晴天"
                        "\nI wish you were here"
                        "\n特別在睡前"
                        "\n看我看的世界"
                        "\n直到手機沒電 "
                        "\n"
                        "\n"
                        "\n很抱歉今天起的太晚打妳電話鈴響沒接 已睡"
                        "\n半個地球的時差跟我就像是敵對"
                        "\n人在倫敦幫妳買個紀念 key chain"
                        "\n保證下個禮拜妳的生日I will be there"
                        "\n今晚出門穿的迷人 讓我幫妳挑"
                        "\n檢查妳的妝容 眉毛畫的有點高"
                        "\n愛妳享受自己的樣子 有點騷"
                        "\n沒讓妳知道送妳出門後心情 有點糟"
                        "\n"
                        "\nI wish I was there"
                        "\n飛到妳身邊"
                        "\n看妳看的世界"
                        "\n台北終於晴天"
                        "\nI wish you were here"
                        "\n特別在睡前"
                        "\n看我看的世界"
                        "\n直到手機沒電 "

                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22,),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class outSongpage7 extends StatefulWidget {
  const outSongpage7({Key? key}) : super(key: key);

  @override
  State<outSongpage7> createState() => _outSongpage7State();
}

class _outSongpage7State extends State<outSongpage7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
        actions: <Widget>[
          Padding(padding:
          EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                if(changeindex==0)
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=1;
                      });
                      await player.play(AssetSource('outS7.mp3'));
                    },
                    icon: Icon(Icons.play_arrow,size: 40,),
                  )
                else
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=0;
                      });
                      await player.stop();
                    },
                    icon: Icon(Icons.stop,size: 40,),
                  ),
              ],
            ),


          ),

        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 220.5,
                  width: 392,
                  padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                  child: Image(image: AssetImage("image/out7.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【Money Bag】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 6,
                    linkColor: Colors.blue,
                  ),

                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n尚未釋出"
                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 50,
                  width: 600,
                  color: Color.fromRGBO(30, 30, 30, 1),
                  child: Text("   Lyric",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\nIt's love it's mind it's earth it's life"
                        "\nWhat is your value"
                        "\nIt's love it's mind it's earth it's life"
                    "\nWhat is your value"
                        "\n"
                        "\nMore than money bag More than money bag More than money bag"
                        "\n你們只會記得"
                        "\nGet more money bags Get more money bags Get more money bags"
                        "\n讓人好捨不得"
                        "\nMore than money bag More than money bag More than money bag"
                        "\n你們只會記得"
                        "\nGet more money bags Get more money bags Get more money bags"
                        "\n讓人好捨不得"
                        "\n"
                        "\n沉的像大海 拖到滿身汗"
                        "\n他們說好看 讓我上頭版"
                        "\n拖到天都暗 看不到明白"
                        "\nGet more money bags"
                        "\nGet more money bags"
                        "\n"
                        "\n不敢放下包在原地"
                        "\n他們說我不再美麗"
                        "\n天空底下都是眼睛"
                        "\n聞到隔壁香的廚藝"
                        "\n"
                        "\n我只花一天make a 100k"
                        "\n他們為我拍手像得葛萊美"
                        "\n我不懂人們是否追求一樣的完美"
                        "\n我像跟這個世界說著不同的語言"
                        "\n"
                        "\n他說背包越大 越是好看"
                        "\n你該花一輩子 將它裝滿"
                        "\n這星球的體溫 降不下來"
                        "\n企業的工廠 tryna get more stack"
                        "\nGet more money bags"
                        "\n"
                        "\nIt's love it's mind it's earth it's life"
                        "\nWhat is your value"
                        "\nIt's love it's mind it's earth it's life"
                        "\nWhat is your value"
                        "\nIt's love it's mind it's earth it's life"
                        "\nWhat is your value"
                        "\n"
                        "\nMore than money bag More than money bag More than money bag"
                        "\n你們只會記得"
                        "\nGet more money bags Get more money bags Get more money bags"
                        "\n讓人好捨不得"
                        "\nMore than money bag More than money bag More than money bag"
                        "\n你們只會記得"
                        "\nGet more money bags Get more money bags Get more money bags"
                        "\n讓人好捨不得"
                        "\n"
                        "\n沉的像大海 拖到滿身汗"
                        "\n他們說好看 讓我上頭版"
                        "\n拖到天都暗 看不到明白"
                        "\nGet more money bags"
                        "\nGet more money bags"
                        "\n"
                        "\n不敢放下包在原地"
                        "\n他們說我不再美麗"
                        "\n天空底下都是眼睛"
                        "\n聞到隔壁香的廚藝"
                        "\n"
                        "\nDollar Dollar bills let's fill the soul"
                        "\n為何需要填滿一個靈魂不是空"
                        "\n你擁有已經足夠但是從來沒想過"
                        "\n如果雙腳沒在行走不如廢了我"
                        "\n"
                        "\n想著別人眼中的我"
                        "\n感覺背著一袋磚頭"
                        "\n有雙手在掐我喉嚨"
                        "\n走的時候能帶著笑容"
                        "\n"
                        "\nGet more money bag"
                        "\nMore than money bag"
                        "\nGet more money bag"

                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22,),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );;
  }
}


class outSongpage8 extends StatefulWidget {
  const outSongpage8({Key? key}) : super(key: key);

  @override
  State<outSongpage8> createState() => _outSongpage8State();
}

class _outSongpage8State extends State<outSongpage8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
        actions: <Widget>[
          Padding(padding:
          EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                if(changeindex==0)
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=1;
                      });
                      await player.play(AssetSource('outS8.mp3'));
                    },
                    icon: Icon(Icons.play_arrow,size: 40,),
                  )
                else
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=0;
                      });
                      await player.stop();
                    },
                    icon: Icon(Icons.stop,size: 40,),
                  ),
              ],
            ),


          ),

        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 220.5,
                  width: 392,
                  padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                  child: Image(image: AssetImage("image/out8.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【So Good To Me】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 6,
                    linkColor: Colors.blue,
                  ),

                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n尚未釋出"
                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 50,
                  width: 600,
                  color: Color.fromRGBO(30, 30, 30, 1),
                  child: Text("   Lyric",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\nI feel like waking up in the sky"
                        "\nI've been floating too long"
                        "\nbut now I can soar"
                        "\nMy life is too good for me"
                        "\nSo good to me"
                        "\nSo good to me"
                        "\nSo good to me"
                        "\nSo good to me"
                        "\nSo good to me"
                        "\nSo good to me"
                        "\nSo good to me"
                        "\n"
                        "\nWhen I think about it"
                        "\nIt's kind of funny tho"
                        "\n我曾經因為成功的路必須花很久"
                        "\n路遙知馬力大家死撐到最後關頭"
                        "\n其實我的人生早就已經無所求"
                        "\n天在眷顧不需要手法"
                        "\n那些恩賜不需要你跪祂"
                        "\n跟著節奏自然放鬆你步伐"
                        "\nHe lives in you like Mufasa"
                        "\n"
                        "\nTravel around to see the world"
                        "\n看聖火傳到Tokyo"
                        "\n要的生活I got it all I'm doing well"
                        "\nTravel around to see the world"
                        "\n看聖火傳到Tokyo"
                        "\n要的生活I got it all I'm doing well"
                        "\n"
                        "\nSo good to me"
                        "\nSo good to me"
                        "\nSo good to me"
                        "\nSo good to me"
                        "\nSo good to me"
                        "\nSo good to me"
                        "\nSo good to me"
                        "\nSo good to me"
                        "\n"
                        "\nSo I gotta keep move on move on"
                        "\n沒有別的記得 鼓掌"
                        "\n助長一點氣氛 兄長 護航"
                        "\n留點情分 我能迷惘 失望 絕不分神"
                        "\n一條街昏暗就插幾個路燈"
                        "\n瞎貓碰死耗子又飽餐一頓"
                        "\n又發了首單曲讓你們久等"
                        "\nI'm just so lucky 還有人會等著"
                        "\n"
                        "\n衣櫃的衣服都變免費的"
                        "\n暖化的夏天但願我們做對了"
                        "\n我希望世界幸福免費的"
                        "\n女孩不要哭 We could do better"
                        "\nWe could do better"
                        "\n"
                        "\nI feel like waking up in the sky"
                        "\nI've been floating too long"
                        "\nbut now I can soar"
                        "\nmy life is too good for me"

                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22,),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class outSongpage9 extends StatefulWidget {
  const outSongpage9({Key? key}) : super(key: key);

  @override
  State<outSongpage9> createState() => _outSongpage9State();
}

class _outSongpage9State extends State<outSongpage9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
        actions: <Widget>[
          Padding(padding:
          EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                if(changeindex==0)
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=1;
                      });
                      await player.play(AssetSource('outS9.mp3'));
                    },
                    icon: Icon(Icons.play_arrow,size: 40,),
                  )
                else
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=0;
                      });
                      await player.stop();
                    },
                    icon: Icon(Icons.stop,size: 40,),
                  ),
              ],
            ),


          ),

        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 220.5,
                  width: 392,
                  padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                  child: Image(image: AssetImage("image/out9.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【Something I Don't Need】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 6,
                    linkColor: Colors.blue,
                  ),

                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n詞：陳昱榕"
                        "\n曲：陳昱榕"
                        "\n製作人：高仰辰 Tipsy Kao"
                        "\n編曲：高仰辰 Tipsy Kao/Jerf"
                        "\n吉他：Jerf"
                        "\n和聲：Ash.C/P.i.N范品頤"
                        "\n錄音師：康家豪 Caxton Kang"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：陳文駿 AJ Chen"
                        "\n混音工作室：強力錄音室 Mega Force Studio"
                        "\n"
                        "\n跳脫饒舌思維！撇開社會框架！重新反省 《Something I Don’t Need》"
                        "\n充滿南洋風情的 Acoustic 歌曲，創作靈感來自瘦子在愛妮島海灘漫步時，恰巧碰到有當地工人在拔椰子樹，一問之下原來是要整地，準備給大集團打造住上一晚要價上萬台幣的豪華度假村。瘦子回頭看看自己住的草屋，住一晚只要台幣幾百塊，設備簡陋但樸實，他在這樣的生活中感受到前所未有的心靈富足，而大集團卻在不遠處花大錢除掉原本美麗的椰子樹，再花大錢蓋豪華飯店，這樣的強烈衝突感不禁讓瘦子反思，世俗所謂的 ideal life 好像就是得汲汲營營努力賺錢一輩子，才能獲得這樣的豪華旅行做為獎賞與放鬆，但這不就是同一塊土地，只有幾步之遙嗎？人類把理想生活塑造成奢侈品，美好人生變得昂貴不可企及，但我們真的需要這麼多嗎？這也是這張專輯留給聽眾最深刻的反思。"
                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 50,
                  width: 600,
                  color: Color.fromRGBO(30, 30, 30, 1),
                  child: Text("   Lyric",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n2月 Nacpan Beach"
                        "\n潮汐涼風 白沙地"
                        "\n海的顏色Tiffany"
                        "\n"
                        "\n說點 大道理"
                        "\n曾經我們都同意 一無所有的定義"
                        "\n"
                        "\nFree spirit 在耳中旋繞"
                        "\n搖頭晃腦像海中水草"
                        "\n樹越砍越貴 捨不得擤個鼻涕"
                        "\n好幾疊百元美金換一片coconut trees"
                        "\n"
                        "\nI’m thinking about something I don’t need"
                        "\n唯心或唯物主義"
                        "\n我寧可 兩者 on my mind"
                        "\nI’m thinking about something I don’t need"
                        "\nBig car big house luxury"
                        "\n塞滿我的大腦裡  太俗氣"
                        "\n"
                        "\n一把火燒掉棺材 再見了一生的愛"
                        "\nHakuna Matata my friend ,don’t let nothing hold you back"
                        "\n請你也抬頭看看 What a starry night"
                        "\n有天我還會回來 There’s something left"
                        "\n"
                        "\n我早該知道 早該知道"
                        "\n有天我會沒力氣 追到沒有了意義"
                        "\n我早該知道 早該知道"
                        "\n燒著大火的森林 自作孽後的結局"
                        "\n"
                        "\nFree spirit 在耳中旋繞"
                        "\n搖頭晃腦像海中水草"
                        "\n樹越砍越貴 捨不得擤個鼻涕"
                        "\n好幾疊百元美金換一片coconut trees"
                        "\n"
                        "\nI’m thinking about something I don’t need"
                        "\n唯心或唯物主義"
                        "\n我寧可 兩者 on my mind"
                        "\nI’m thinking about something I don’t need"
                        "\nBig car big house luxury"
                        "\n塞滿我的大腦裡  太俗氣"
                        "\n"

                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22,),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class outSongpage10 extends StatefulWidget {
  const outSongpage10({Key? key}) : super(key: key);

  @override
  State<outSongpage10> createState() => _outSongpage10State();
}

class _outSongpage10State extends State<outSongpage10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
        actions: <Widget>[
          Padding(padding:
          EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                if(changeindex==0)
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=1;
                      });
                      await player.play(AssetSource('outS10.mp3'));
                    },
                    icon: Icon(Icons.play_arrow,size: 40,),
                  )
                else
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=0;
                      });
                      await player.stop();
                    },
                    icon: Icon(Icons.stop,size: 40,),
                  ),
              ],
            ),


          ),

        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 220.5,
                  width: 392,
                  padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                  child: Image(image: AssetImage("image/out10.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【她沒在看我 She Ain’t Watchin’】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 6,
                    linkColor: Colors.blue,
                  ),

                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n詞：陳昱榕"
                        "\n曲：陳昱榕"
                        "\n製作人：高仰辰 Tipsy Kao"
                        "\n編曲：高仰辰 Tipsy Kao"
                        "\n和聲編寫：P.i.N范品頤/靛藍音程工作室"
                        "\n和聲：P.i.N范品頤"
                        "\n錄音師：康家豪 Caxton Kang/林清智 Zachary Lin"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：林清智 Zachary Lin"
                        "\n混音工作室：本色錄音室 True Color Studio"
                        "\n"
                        "\n一次次的現場演出中，無論如何賣力的表演，我在高處看到的都是被手機遮住的半張臉，這是我們最近又最遙遠的距離...."
                        "\n手機好似潘朵拉之盒，它收藏著你的喜怒哀樂，記錄著你的高矮胖瘦但，你選擇的是酸澀驚奇的記憶點或是蜜甜即逝的毒蘋果呢？頻幕就像一面魔鏡，它折射出不同的人性也許我們就像童話故事的角色你選擇把愛葬在夢裡，但我卻把愛留在了這裏 "
                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 50,
                  width: 600,
                  color: Color.fromRGBO(30, 30, 30, 1),
                  child: Text("   Lyric",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n最遠的距離我們之間多了他"
                        "\n5.58 inches 擋著妳的眼神沒有扎"
                        "\n我想記得妳的樣子有點面熟 I mean"
                        "\n我的線索都是半張臉孔 有點籠統"
                        "\n我以為妳會期待我們見面"
                        "\n我以為我們能夠認識不只有夢裡的畫面"
                        "\n或許妳害怕交談只留下一張照片"
                        "\n我離開時還在想是否我的奢望有點越線"
                        "\n我想 看妳跳舞 我想 看妳身體讚美我的天賦"
                        "\n讓我感覺不是獨處 妳能鼓舞 我想看妳笑的開懷像妳愛妳生命"
                        "\n永遠都是春季 香甜可口蜂蜜 "
                        "\n把手給我 讓我握著 "
                        "\n我讓妳感受那些我不曾有過的"
                        "\n這是唯一能讓妳看到我的方法 或者"
                        "\n"
                        "\n2019有沒有時光機能夠坐呢"
                        "\n"
                        "\n她沒在看我 她沒在看我"
                        "\n在她的心中 卻有一半我"
                        "\n每當我低頭 她沒在舞動"
                        "\n當我揮灑著汗水 當我揮灑汗水"
                        "\n"
                        "\n當我的視線跟他對到眼 "
                        "\n當我的思緒沒法安份點"
                        "\n幾千隻雙眼盯著我們的關係都無法輕淡寫"
                        "\nOh man 那畫面散太遠"
                        "\n我記得 妳那天遞給我的一張面紙"
                        "\n留著妳的電話 妳的地址 妳的意思"
                        "\n我躺在房裡想著妳撫媚的樣子"
                        "\n抱歉我不能出現"
                        "\n他還在妳照的那面鏡子"
                        "\n他在那記錄妳的妝容妳的胖瘦"
                        "\n今天晚上妳會遇見誰"
                        "\n陪伴妳的每個週末 妳的放縱"
                        "\n留給我的已經不特別"
                        "\n為何他總是讓妳低頭 "
                        "\n不停想我就算我已站在妳面前"
                        "\n剩下留給妳的腦中 妳的眼中 "
                        "\n哪怕只有一瞬間"
                        "\n"
                        "\n她沒在看我 她沒在看我"
                        "\n在她的心中 卻有一半我"
                        "\n每當我低頭 她沒在舞動"
                        "\n當我揮灑汗水 當我揮灑汗水"
                        "\n"
                        "\n他在那記錄妳的妝容妳的胖瘦"
                        "\n今天晚上妳會遇見誰"
                        "\n陪伴妳的每個週末 妳的放縱"
                        "\n留給我的已經不特別"
                        "\n為何他總是讓妳低頭 "
                        "\n不停想我就算我已站在妳面前"
                        "\n剩下留給妳的腦中 妳的眼中 "
                        "\n哪怕只有一瞬間"

                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22,),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class outSongpage11 extends StatefulWidget {
  const outSongpage11({Key? key}) : super(key: key);

  @override
  State<outSongpage11> createState() => _outSongpage11State();
}

class _outSongpage11State extends State<outSongpage11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
        actions: <Widget>[
          Padding(padding:
          EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                if(changeindex==0)
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=1;
                      });
                      await player.play(AssetSource('outS11.mp3'));
                    },
                    icon: Icon(Icons.play_arrow,size: 40,),
                  )
                else
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=0;
                      });
                      await player.stop();
                    },
                    icon: Icon(Icons.stop,size: 40,),
                  ),
              ],
            ),


          ),

        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 220.5,
                  width: 392,
                  padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                  child: Image(image: AssetImage("image/out11.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【伯父 Bo Fu】】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 6,
                    linkColor: Colors.blue,
                  ),

                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n詞：陳昱榕"
                        "\n曲：陳昱榕"
                        "\n製作人：高仰辰 Tipsy Kao"
                        "\n編曲：高仰辰 Tipsy Kao"
                        "\n和聲編寫統籌：P.i.N范品頤/靛藍音程工作室"
                        "\n和聲：P.i.N范品頤,邵慧芸,張義欣,陳茵聖"
                        "\n錄音師：康家豪 Caxton Kang/林清智 Zachary Lin"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：陳文駿 AJ Chen"
                        "\n混音工作室：強力錄音室 Mega Force Studio"
                        "\n"
                        "\n生命中總有個《伯父》對你刁難，因為你太優秀捧走了他的最愛這彷彿是所有男孩都會經歷的人生故事：「交了個新女友，發現女友老爸怎麼不喜歡我的出身、我的學歷、我的工作、我的刺青、我的工作、我的一切，然後才發現，原來他是氣我搶走他捧在手心上大半輩子的 babe girl 。」"
                        "\n總是有些長輩愛把「現在的年輕人…」當作口頭禪掛在嘴邊，好像年紀不正確就能當作貶低的政治正確，各行各業的業界前輩看不慣新一代，從草莓族變成冰淇淋族，其實是看不慣他們捧了大半輩子的光環與成就交替換手，這感覺也許就像是失去 babe girl 那種寂寞的心情。《伯父》象徵著一種可愛的悶氣，這種症頭也許你變老以後也會有。"
                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 50,
                  width: 600,
                  color: Color.fromRGBO(30, 30, 30, 1),
                  child: Text("   Lyric",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n伯父他不愛 他不愛我整手刺青"
                        "\n他特別不愛 我一個太自由的心"
                        "\n"
                        "\n伯父他不愛"
                        "\n做的音樂沒出息"
                        "\n"
                        "\n伯父他不愛我所有的理由"
                        "\n氣我搶走他的Babe Girl"
                        "\n"
                        "\n是我不太懂事 是我太雞婆"
                        "\n你別花家裡的錢 以後你都花我"
                        "\n伯父不太喜歡我又搶了他工作"
                        "\n他說沒有人能愛他女兒比他多"
                        "\n抱歉 我們今天晚上玩到三更半夜 My Bad "
                        "\n兩人世界容易忘記時間 Always"
                        "\n我是該讓她在家裡多點"
                        "\n伯父不喜歡我叫他寶貝女兒搖落"
                        "\n"
                        "\n伯父他不喜歡壞的男生"
                        "\n他不知道他的女兒品味獨特"
                        "\n討厭我的工作我的出身"
                        "\n沒有好的學歷 家世顯赫"
                        "\n"
                        "\n伯父他不喜歡壞的男生"
                        "\n他不知道他的女兒品味獨特"
                        "\n討厭我的工作我的出身"
                        "\n沒有好的學歷 家世顯赫"
                        "\n"
                        "\n伯父他不愛 他不愛我整手刺青"
                        "\n他特別不愛 我一個太自由的心"
                        "\n"
                        "\n伯父他不愛"
                        "\n做的音樂沒出息"
                        "\n"
                        "\n伯父他不愛我所有的理由"
                        "\n氣我搶走他的Babe Girl"
                        "\n"
                        "\n不是伯父期望 有著不同立場"
                        "\n我從小證明 自己不用被體諒"
                        "\n在我來的地方 要更強的臂膀"
                        "\n我愛著我的父母 全村的希望"
                        "\n"
                        "\n擁有不同 everything I got totally earn it"
                        "\n沒有放過任何機會 I’m gonna kill it"
                        "\n善待身邊的人我能做到問心無愧"
                        "\n我相信誠實的心才能得到真的富貴"
                        "\n"
                        "\n伯父他不喜歡壞的男生"
                        "\n他不知道他的女兒品味獨特"
                        "\n討厭我的工作我的出身"
                        "\n沒有好的學歷 還有家世顯赫"
                        "\n"
                        "\n伯父說能不能換個別的"
                        "\n他不知道他的女兒品味獨特"
                        "\n"
                        "\n伯父他不愛 他不愛我整手刺青"
                        "\n他特別不愛 我一個太自由的心"
                        "\n"
                        "\n伯父他不愛"
                        "\n做的音樂沒出息"
                        "\n"
                        "\n伯父他不愛我所有的理由"
                        "\n氣我搶走他的Babe Girl"
                        "\n"
                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22,),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class outSongpage12 extends StatefulWidget {
  const outSongpage12({Key? key}) : super(key: key);

  @override
  State<outSongpage12> createState() => _outSongpage12State();
}

class _outSongpage12State extends State<outSongpage12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
        actions: <Widget>[
          Padding(padding:
          EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                if(changeindex==0)
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=1;
                      });
                      await player.play(AssetSource('outS12.mp3'));
                    },
                    icon: Icon(Icons.play_arrow,size: 40,),
                  )
                else
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=0;
                      });
                      await player.stop();
                    },
                    icon: Icon(Icons.stop,size: 40,),
                  ),
              ],
            ),


          ),

        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 220.5,
                  width: 392,
                  padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                  child: Image(image: AssetImage("image/out12.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【WAIT】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 6,
                    linkColor: Colors.blue,
                  ),

                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n詞：陳昱榕"
                        "\n曲：陳昱榕"
                        "\n製作人：高仰辰 Tipsy Kao"
                        "\n編曲：FunkyMo/高仰辰 Tipsy Kao"
                        "\n錄音師：康家豪 Caxton Kang"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：林清智 Zachary Lin"
                        "\n混音工作室：本色錄音室 True Color Studio"
                        "\n"
                        "\n你我的偉大成就在即，不需再《WAIT》"
                        "\n「不要告訴我再等，你沒辦法藏著偉大的事情發生」"
                        "\n"
                        "\n瘦子E.SO 在整張專輯裡充滿著擬人敘事與一體兩面的各種思維衝突，若是有心細嚼其中，不難發現這首歌的內容有著整張專輯的議題思辨，更直接粗暴的像是一本書的結語，作為整張專輯最後完成的曲目也是唯一的首純饒舌歌，開頭聖光充滿的 gospel 銜接上飽滿的饒舌，用上帝視角俯瞰音樂圈"
                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 50,
                  width: 600,
                  color: Color.fromRGBO(30, 30, 30, 1),
                  child: Text("   Lyric",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n我需要你的助力像是在盪鞦韆"
                        "\n這次我的心裡終於沒有糾結"
                        "\n二手車的經歷雖然他老舊點"
                        "\n挺你還算容易後座還有座位"
                        "\n "
                        "\n天災人禍 只怕一開始就沒真的站穩"
                        "\n上帝給我的考驗不是全都贊成"
                        "\n我自認我沒那麼偉大當一個善人"
                        "\n我殺掉那些敵人是我能夠做到的忠誠"
                        "\n"
                        "\n說真的"
                        "\n從來沒有懷疑過"
                        "\n對自己有多少容忍 "
                        "\n才能清楚凡人偶爾會脆弱"
                        "\n"
                        "\n那道溫暖它從 東 邊 在 升 起"
                        "\n燃 燒 我的生命 留 下 的痕跡 能讓孩子看著"
                        "\n範 本 在 複 習 最後能夠 成就 G R E A T"
                        "\n"
                        "\nDon’t you tell me you should"
                        "\nwait wait wait wait wait"
                        "\n恁爸頭髮都要白"
                        "\n"
                        "\nYou can’t stop the "
                        "\ngreat great great great "
                        "\nGreatness 註定要到來"
                        "\n"
                        "\nMotherfucker I’m gonna "
                        "\ntake take take take take"
                        "\n城市裡的羅賓漢"
                        "\n"
                        "\nI will pay pay pay pay pay"
                        "\n那些辛苦的血汗"
                        "\n"
                        "\nLike Khaled "
                        "\nMajor key"
                        "\n不是誰都能拿"
                        "\n在追人氣"
                        "\n沒意義"
                        "\n隨時都會蒸發"
                        "\nThrow some D’s"
                        "\nOn that bitch "
                        "\n滿足不了生涯"
                        "\n替自己辦的成年禮這場面多麼盛大"
                        "\n我告訴小伙子的忠告 沒有一個人在聽"
                        "\n也對 我在他這個年紀can’t tell me nothing"
                        "\n不屑 I wish you all the best "
                        "\n有天你會體會"
                        "\n始終got you back 願你不被擊退"
                        "\n在家叼著煙 counting million dollar bills"
                        "\n有天讓敵人能為你加油"
                        "\n兄弟離開gang 不用血染雙手"
                        "\nWe survive 那道溫暖它從 東 邊 在 升 起"
                        "\n燃 燒 我的生命 留 下 的痕跡 能讓孩子看著"
                        "\n範 本 在 複 習 最後能夠 成就 G R E A T"
                        "\n"
                        "\nDon’t you tell me you should wait"
                        "\nYou can’t stop the great"
                        "\nMotherfucker I’m gonna take "
                        "\nI got paid"
                        "\n"
                        "\nDon’t you tell me you should"
                        "\nwait wait wait wait wait"
                        "\n恁爸頭髮都要白"
                        "\n"
                        "\nYou can’t stop the "
                        "\ngreat great great great "
                        "\nGreatness 註定要到來"
                        "\n"
                        "\nMotherfucker I’m gonna "
                        "\ntake take take take take"
                        "\n城市裡的羅賓漢"
                        "\n"
                        "\nI will pay pay pay pay pay"
                        "\n那些辛苦的血汗"
                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22,),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class outSongpage13 extends StatefulWidget {
  const outSongpage13({Key? key}) : super(key: key);

  @override
  State<outSongpage13> createState() => _outSongpage13State();
}

class _outSongpage13State extends State<outSongpage13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(15, 15, 15, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        title: Row(
          children: [
            const Text("Introduction",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
          ],
        ),
        actions: <Widget>[
          Padding(padding:
          EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                if(changeindex==0)
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=1;
                      });
                      await player.play(AssetSource('outS13.mp3'));
                    },
                    icon: Icon(Icons.play_arrow,size: 40,),
                  )
                else
                  IconButton(
                    onPressed:() async{
                      setState((){
                        changeindex=0;
                      });
                      await player.stop();
                    },
                    icon: Icon(Icons.stop,size: 40,),
                  ),
              ],
            ),


          ),

        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 220.5,
                  width: 392,
                  padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                  child: Image(image: AssetImage("image/out13.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【太陽 When The Cloudless Day Comes】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 6,
                    linkColor: Colors.blue,
                  ),

                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n詞：陳昱榕"
                        "\n曲：陳昱榕"
                        "\n製作人：高仰辰 Tipsy Kao"
                        "\n編曲：FunkyMo/高仰辰 Tipsy Kao"
                        "\n和聲編寫：P.i.N范品頤/靛藍音程工作室"
                        "\n和聲：P.i.N范品頤/林清智 Zachary Lin"
                        "\n錄音師： 康家豪 Caxton Kang"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：林清智 Zachary Lin"
                        "\n混音工作室：本色錄音室 True Color Studio"
                        "\n"
                        "\n愛是一頁偉大的詩篇，讓我們無懼前行；溫暖的音樂能劃破黑夜那束陽光，牽引著我們走向光明未來！"
                        "\n《太陽》一曲瘦子E.SO 藉由溫暖的聲線取代驚慌不安的情緒，用平易的詞意取代¬沈重悲愴的心境；有些段落則以溫融的音色與豐富的和聲變化、起伏的對比，賦予生命力，表達出未來充滿希望，相信「Everything gon’be fine」！"
                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
                Container(
                  height: 50,
                  width: 600,
                  color: Color.fromRGBO(30, 30, 30, 1),
                  child: Text("   Lyric",style: TextStyle(color: Colors.white,fontSize: 29,fontFamily: "Oswald")),
                ),
                Container(
                  width: 600,
                  margin: EdgeInsets.only(bottom: 15),
                  child:
                  ExpandableText(
                    "\n已經習慣在家被你寵"
                        "\n永遠都念著我"
                        "\n早上拉開窗簾你不讓我睡過頭"
                        "\n最好吃最可口"
                        "\n是你做獅子頭"
                        "\n用錢買不到你為我燙平的領口"
                        "\n你的存在像應該"
                        "\n但現在你不在"
                        "\n我必須自己下廚吃我自己挾的菜"
                        "\n沒什麼事我只想知道你那還習慣"
                        "\n你告訴我比自己想的還要更勇敢"
                        "\n"
                        "\n在同個空間 "
                        "\n卻又感覺離的遠"
                        "\n抱不到你的黑夜"
                        "\n漫長冬天"
                        "\n心臟被寒風攻陷"
                        "\n害怕那是多直接"
                        "\n"
                        "\n在同個空間 "
                        "\n卻又感覺離的遠"
                        "\n抱不到你的黑夜"
                        "\n漫長冬天"
                        "\n心臟被寒風攻陷"
                        "\n害怕那是多直接"
                        "\n"
                        "\n太陽還不出來"
                        "\n快悶壞 快悶壞 快悶壞 只想出門曬曬"
                        "\nEverything gon’be fine "
                        "\n在這等著你回來 "
                        "\n"
                        "\n最後悔的是我們不能吻別"
                        "\nLike we used to "
                        "\n視訊裡的樣子你臉瘦的像個骷髏"
                        "\n只想說輕鬆的 需要一點城府"
                        "\n在這寒冷的城市我感覺像小人物"
                        "\n他們說人在面臨難關 自私會變得更大"
                        "\n我不介意你傷害我 我知道你也害怕"
                        "\n如果我不能原諒你 等於我跟著踐踏"
                        "\n如果不能在一起 至少有著相同盼望"
                        "\n"
                        "\n一堆唱片歌頌悲情 我說不動"
                        "\n我自認自己活在光明 但敵不過"
                        "\nI thought I was chilling not anymore "
                        "\n誰會聽到哭聲 還能裝做沒疑惑"
                        "\n頭上這片烏雲"
                        "\n不能把我"
                        "\n希望帶走"
                        "\n雙膝跪地主阿指引路的盡頭"
                        "\n我赴湯蹈火"
                        "\n祢的愛應該是不分你我"
                        "\n不分人種"
                        "\n當愛人有一天變成戰友 親愛的不能軟弱"
                        "\n"
                        "\n太陽還不出來"
                        "\n快悶壞 快悶壞 快悶壞 只想出門曬曬"
                        "\nEverything gon’be fine  "
                        "\n在這等著你回來 "
                        "\n"
                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22,),
                    expandText: '更多',
                    collapseText: '收起',
                    maxLines: 5,
                    linkColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}