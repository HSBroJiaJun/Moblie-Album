import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:audioplayers/audioplayers.dart';
import 'main.dart';




class dreamSongpage1 extends StatefulWidget {
  const dreamSongpage1({Key? key}) : super(key: key);

  @override
  State<dreamSongpage1> createState() => _dreamSongpage1State();
}

class _dreamSongpage1State extends State<dreamSongpage1> {

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
              child:Row(
                children: [
                  if(changeindex==0)
                    IconButton(
                      onPressed:() async{
                        setState((){
                          changeindex=1;
                        });
                        await player.play(AssetSource('dreamS1.mp3'));
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
              )
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
                  child: Image(image: AssetImage("image/dream1.jpg"),),
                  ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                        "【給愛麗絲 Für Elise】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "詞/曲：熊仔"
                    "\n編曲：RGRY/Sonia Calico"
                    "\nguest vocal：MC Hotdog"
                    "\n副歌合聲：呂士軒"
                    "\nmix/master：J.Wu"
                    "\n"
                    "\n環境維護 人人有責"
                    "\n搖下車窗 最高音量放送這首歌"
                    "\n當我的垃圾車"
                    "\nFuck outta here with that weak shit 👑🚮"
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
                        "\n前幾天我叫了Uber"
                        "\n一上車我就哭了"
                        "\n廣播又在播垃圾歌"
                        "\n哥我再也忍不住了"
                        "\n我叫大哥把音源線拿給我"
                        "\n用最高音量放我新的demo"
                        '\nUber瞬間變台垃圾車'
                        '\n噪音污染每個街口'
                            "\n"
                        '\n意思是一聽到我的歌'
                        '\n經過你的hood就知道應該倒垃圾'
                        '\n多久沒有清乾淨難聽的清單'
                        '\nShit臭成這樣還不覺得惡'
                        '\n因為你入鮑魚之肆久而不聞其臭'
                        '\n不好意思我就是這麼real talk'
                        '\nYou tell me哪個是你拜的idol'
                        '\n來我佛擋殺佛颱風太弱根本不成氣候'
                            "\n"
                        '\n別覺得我在針對'
                        '\n在座各位都在做垃圾沒在分類'
                        '\nYall fake假情假愛像在假交配'
                        '\n沒有紮根那你壓根是在消費'
                        '\n新世代的勢力隨時蓄勢待發'
                        '\n我們靠著自己實力你們在找代打'
                        '\n下一次再給我mic drop'
                        '\n保證你再也撿不回來要你承擔業的代價'
                            "\n"
                        '\n而當你站上台前在深呼吸要拿起麥克風'
                        '\n這首歌將在你腦裡響起成為你的惡夢'
                        '\n而當我浮上台 面用真實力搶走你的麥克風'
                        '\n你就別再給我碰沒關係儘管扯破你的喉嚨'
                            "\n"
                        '\n而當你站上台前在深呼吸要拿起麥克風'
                        '\n這首歌將在你腦裡響起成為你的惡夢'
                        '\n而當我浮上檯面用真實力搶走你的麥克風'
                        '\n你就別再給我碰碰碰碰碰'
                            "\n"
                        '\nFuck outta here with that weak shit'
                        '\n好意思說你在做音樂'
                        '\nFuck outta here with that fake shit'
                        '\n仿造的金鍊被我摧毀'
                        '\n生鏽的皇冠被我捏碎'
                        '\nYou know what'
                        '\nFuck outta here with that weak shit'
                        '\n好意思說你在做音樂'
                        '\nFuck outta here with that fake shit'
                        '\n仿造的金鍊被我摧毀'
                        '\n生鏽的皇冠被我捏碎'
                        '\n被揉成廢鐵'
                        "\nYou're getting wasted"
                            "\n"
                        '\n大獨家大獨家大獨家'
                        '\n豹子膽一人進行華語音樂大屠殺'
                        '\n那些消費文化的I ma fuck you up'
                        '\n那些該被焚化的I ma fuck you up'
                        '\n我就是看不慣'
                        '\n你看著我的眼睛說你做的東西爛不爛'
                        '\n三腳貓功夫濫竽充數'
                        '\n我當眾揭穿你的真面目'
                        '\nNow what you gon do'
                            "\n"
                        '\n用三分鐘哼出個爛旋律'
                        '\n配個拔辣和弦組團賺錢去'
                        '\n唱些還是別當朋友還是還是愛你'
                        '\n分不清是你歌名還是國中生的id'
                        '\nBOWZ你太敢講了吧'
                        '\n講些大家不敢講的話太爽了吧'
                        "\nGuess what? I'm from the underground"
                        '\n想怎樣就怎樣大雅之堂我高攀不上'
                            "\n"
                        '\n但是告訴你個秘密世代正在交替'
                        '\n傳統通路早已達不到以往的高效益'
                        '\n電台要把我消音電視要禁隨你高興'
                        '\n網軍暴民高舉自製武器殺進你家大廳'
                            "\n"
                        '\n站上同個立足你無依無靠'
                        "\n沒實力就被剔除掉where's your庇護now"
                        '\n這是文革斗地主style'
                        '\n土炮製的地圖炮BOWZ'
                            "\n"
                        '\n而當你站上台前在深呼吸要拿起麥克風'
                        '\n這首歌將在你腦裡響起成為你的惡夢'
                        '\n而當我浮上檯面用真實力搶走你的麥克風'
                        '\n你就別再給我碰沒關係儘管扯破你的喉嚨'
                            "\n"
                        '\n而當你站上台前在深呼吸要拿起麥克風'
                        '\n這首歌將在你腦裡響起成為你的惡夢'
                        '\n而當我浮上檯面用真實力搶走你的麥克風'
                        '\n你就別再給我碰碰碰碰碰'
                            "\n"
                        '\nFuck outta here with that weak shit'
                        '\n好意思說你在做音樂'
                        '\nFuck outta here with that fake shit'
                        '\n仿造的金鍊被我摧毀'
                        '\n生鏽的皇冠被我捏碎'
                        '\nYou know what'
                        '\nFuck outta here with that weak shit'
                        '\n好意思說你在做音樂'
                        '\nFuck outta here with that fake shit'
                        '\n仿造的金鍊被我摧毀'
                        '\n生鏽的皇冠被我捏碎'
                        '\n被揉成廢鐵'
                        "\nYou're getting wasted"
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

class dreamSongpage2 extends StatefulWidget {
  const dreamSongpage2({Key? key}) : super(key: key);

  @override
  State<dreamSongpage2> createState() => _dreamSongpage2State();
}

class _dreamSongpage2State extends State<dreamSongpage2> {
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
                      await player.play(AssetSource('dreamS2.mp3'));
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
                  child: Image(image: AssetImage("image/dream2.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【禁愛令 Antilove】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "詞/曲：熊仔"
                        "\n製作人：熊仔／李權哲"
                        '\n編曲：李權哲／rgry'
                        '\n和聲編寫：陳思函／熊信寬'
                        '\n和聲：陳思函／李權哲'
                        '\n背景歡呼：馮茹芸／咪老／Fumika'
                         '\n主電鋼琴／電bass／電吉他／鼓／合成器：李權哲'
                         '\n鋼琴：Andrew Rose'
                         '\n薩克斯風：Anton Derevyanko'
                         '\n輔助吉他：Kevin Leung'
                         '\n混音工程師：J.Wu'
                          '\nOP：Sony Music Publishing (Pte) Ltd. Taiwan Branch'
                    "\n"
                    "\nI have bigger dreams to pursue."
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
                    "\n寶貝"
                      "\n有件事我希望妳能了解"
                      '\n今天和新公司談了合約'
                      '\n開給我夢寐以求的條件'
                      '\n是時候高飛'
                    "\n"
                      '\n但是baby'
                      '\n創造前註定伴隨著毀滅'
                      '\n將獻出我七年的青春歲月'
                      '\n而妳和我的愛將成為罪孽'
                      '\n是時候告別'
                        "\n"
                      '\n我將流連深夜場違反妳的門禁'
                      '\n夜店章蓋過妳的唇印'
                      '\n鎂光燈閃驅逐如影隨行的倩影'
                      '\n妳聽多少目光他們正在看'
                      '\n等著我釋放一顆震撼彈'
                      '\n若夢想成真只有one chance'
                      '\n願不願拿真愛換'
                        "\n"
                      '\n禁愛令簽在這'
                      '\n現在起antilove (anti anti戀愛)'
                      '\n禁愛令簽在這'
                      '\n現在起antilove (anti anti戀愛)'
                      '\n下定決心這一秒鐘起'
                      '\n(簽在這) 放棄所有愛人的能力'
                      '\n(現在起) 簽下出賣靈魂的約契'
                      '\n(Antilove) 再也無法愛妳'
                        "\n"
                      '\n我的寶貝'
                      '\n可不可以別再流眼淚'
                      '\n說實在的已經解釋到我有點累'
                      '\n當初說妳會當我最強大的後備'
                      '\n現在就別再扯我後腿'
                      '\n妳好霸道想要獨占我的愛'
                      '\n當我上台誰能不看我的帥'
                      '\n這無關我的壞行程表早已塞爆'
                      '\n我的檔期不是妳能負擔起的債'
                        "\n"
                      '\n坦白說我已經算坦白'
                      '\n白紙黑字清楚攤了牌'
                      '\n有多少人們暗地里為了形象為了慾望為了新台幣'
                      '\n用隱形墨水簽了禁愛令know what I mean'
                      '\n所以抱歉我不感到抱歉'
                      '\nI gotta go我沒時間浪費'
                      '\n而且再見也不是不會再見'
                      '\n妳可以買票看我演唱會'
                        "\n"
                      '\n我將流連深夜場違反妳的門禁'
                      '\n夜店章蓋過妳的唇印'
                      '\n鎂光燈閃驅逐如影隨行的倩影'
                      '\n妳聽多少目光他們正在看'
                      '\n等著我釋放一顆震撼彈'
                      '\n若夢想成真只有one chance'
                      '\n願不願拿真愛換'
                        "\n"
                      '\n禁愛令簽在這'
                      '\n現在起antilove (anti anti戀愛)'
                      '\n禁愛令簽在這'
                      '\n現在起antilove (anti anti戀愛)'
                      '\n下定決心這一秒鐘起'
                      '\n(簽在這) 放棄所有愛人的能力'
                      '\n(現在起) 簽下出賣靈魂的約契'
                      '\n(Antilove) 再也無法愛妳'
                        "\n"
                      '\n禁愛令 簽在這'
                      '\n現在起 antilove'
                      '\n新台幣 進來了'
                      '\n親愛的 離開了'
                      '\n禁愛令 簽在這'
                      '\n現在起 antilove'
                      '\n新台幣 進來了'
                      '\n親愛的 離開了'
                      '\n禁愛令 簽在這'
                      '\n現在起 antilove'
                      '\n新台幣 進來了'
                      '\n親愛的 離開了'
                      '\n簽下禁愛令'
                      '\n從這一刻起'
                      '\n不能再愛妳oh baby'
                      '\n喪失愛人的能力'
                      '\n也無法愛自己'

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


class dreamSongpage3 extends StatefulWidget {
  const dreamSongpage3({Key? key}) : super(key: key);

  @override
  State<dreamSongpage3> createState() => _dreamSongpage3State();
}

class _dreamSongpage3State extends State<dreamSongpage3> {
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
                      await player.play(AssetSource('dreamS3.mp3'));
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
                  child: Image(image: AssetImage("image/dream3.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【走紅毯 Red Carpet】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n詞/曲：熊仔"
                        "\n製作：熊仔/RGRY"
                  '\n編曲：RGRY'
                  '\nmix/master：J.Wu'
                  '\n聲樂：黃珮舒'
                  '\nCover Art：c.a.chou'
                        "\n"
                        "\n終於輪到我走紅毯"
                        "\nMama I made it !"
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
                   "\n被簽進了新經紀公司"
                   '\n簽下了禁愛令一舉一動都被控制'
                   '\n要塑造成男神把男粉絲女粉絲通吃'
                   '\n但歌詞內容韻腳flow技巧他們完全不重視'
                       "\n"
                   '\n安排為節目里內定的種子'
                   '\n製作單位要求核准我每一個用字'
                   '\n各家媒體搶著採訪我想對我熟識'
                   '\n但內容被剪接成全都是八卦只為了衝收視'
                   '\n真的好諷刺'
                   "\n"
                   '\nNah規定好多規定我這不能說那不能做'
                   '\n餵有沒有搞錯像傀儡般被人操作'
                   '\nNah nah fuck all this faking and all'
                   "\nI'm bout to break all the locks"
                   '\n沒有人能主宰我'
                   '\n男生膜拜我女生都愛我'
                   '\nWatch me go VIRAL'
                       "\n"
                   "\nIt's been a long time"
                   '\n終於輪到我走紅，輪到我走紅毯'
                   "\nI said it's been a long, it's been a long long time"
                   '\n終於輪到我走紅，扯著喉嚨喊aye aye'
                   '\nMama I made it！'
                   '\nI made it i made it!'
                   "\nMama I'm famous!"
                   "\nI'm famous I'm famous!"
                   '\nMama I made it!'
                   '\nI made it I made it!'
                   "\nNow that I'm famous"
                   '\nGet out of my way! Out of my way!'
                       "\n"
                   '\n單曲發表會大手筆投資'
                   '\n正式宣布將要關進演藝圈的籠子'
                   '\n受夠了全部的公式'
                   '\n把發表會當成了發飆會高舉著中指'
                       "\n"
                   '\n直播都播了沒辦法後製'
                   '\n經紀人慌了場面無法收拾'
                   '\n被老闆當成個脫韁的瘋子'
                   '\n將經紀冷凍直到唱片約終止'
                   '\n爆炸的畫面被po上網迅速累積千萬人次'
                   '\n壟斷各平台從影像到文字'
                   '\n粉絲就愛這不粉飾真實感'
                   '\n憤世巨星的問世豹子膽'
                       "\n"
                   '\nNah規定好多規定我這不能說那不能做'
                   '\n餵有沒有搞錯像傀儡般被人操作'
                   '\nNah nah fuck all this faking and all'
                   "\nI'm bout to break all the locks"
                   '\n沒有人能主宰我'
                   '\n男生膜拜我女生都愛我'
                   '\nWatch me go VIRAL'
                       "\n"
                   "\nIt's been a long time"
                   '\n終於輪到我走紅，輪到我走紅毯'
                   "\nI said it's been a long, it's been a long long time"
                   '\n終於輪到我走紅，扯著喉嚨喊aye aye'
                   '\nMama I made it！'
                   '\nI made it i made it!'
                   "\nMama I'm famous!"
                   "\nI'm famous I'm famous!"
                   '\nMama I made it!'
                   '\nI made it I made it!'
                   "\nNow that I'm famous"
                   '\nGet out of my way! Out of my way!'

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


class dreamSongpage4 extends StatefulWidget {
  const dreamSongpage4({Key? key}) : super(key: key);

  @override
  State<dreamSongpage4> createState() => _dreamSongpage4State();
}

class _dreamSongpage4State extends State<dreamSongpage4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                      await player.play(AssetSource('dreamS4.mp3'));
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
                  child: Image(image: AssetImage("image/dream4.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【假朋友真兄弟 FFRH】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n詞/曲：熊仔"
                        "\n製作：熊仔/RGRY"
                  '\n編曲：RGRY'
                  '\nsample：陶喆《普通朋友》'
                  '\nmix/master：J.Wu'
                  '\n和聲：陳思函'
                  '\n主吉他：James Kerridge'
                  '\n輔助節奏吉他：李權哲'
                  "\nCover Art：c.a.chou"
                    "\n"
                    "\n我的身邊有很多的朋友"
                    '\n忙起來有時候很久都沒有聯絡'
                    '\n但是我沒有忘了你們'
                    '\n所以我寫了這首歌 送給你'
                    "\n希望你會喜歡"
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
                    "\n紅了後 我的朋友一夕之間變好多"
                    '\n紅了後 我的朋友說我態度變好多'
                    '\n兄弟和朋友不同 沒在管我紅不紅'
                    '\nso 紅了後 朋友和我兄弟好分辨好多'
                    "\n"
                  '\n朋友約我party 為了打卡炫耀'
                  '\n我的兄弟打卡 為了約我出門hang out'
                  '\n我的朋友偷拍照片 狂發十張限時動態'
                  '\n我跟兄弟喝到斷片 記憶和底片全是空白'
                        "\n"
                  '\n朋友說 欸 好久沒見 電話打不通怎麼都不回電'
                  '\n女友快要生日 是你頭號粉絲'
                  '\n可不可以私下 約你會面'
                  '\n（I don’t know about that man）'
                  '\n朋友這樣太沒sense 對你感情太隨便'
                  '\n稍微移開視線 （危險危險） 三秒鐘讓她移情別戀'
                        "\n"
                  '\n我的朋友跟他朋友說 bowz是他兄弟'
                  '\n我的朋友跟他兄弟說 bowz他好臭屁'
                  '\n很不巧的你不曉得你的兄弟是我兄弟所以'
                  '\n不好意思朋友你又少了一個兄弟 sorry'
                        "\n"
                  '\nnah 我朋友一直哄我 我朋友一直捧我'
                  '\n我朋友很懂social但是沒有一個懂我'
                  '\n我兄弟比我還要反社會'
                  '\n對fake ass 比較直接'
                  '\n都說 get the fuck out of my face'
                        "\n"
                  "\n'm not yo bro "
                  "\nI'm not yo homie"
                  "\nI'm not yo man"
                  "\nno you don’t know me"
                        "\nI'm not yo guy"
                  "\nI'm not yo 兄弟"
                  "\nI'm not yo 誰誰誰"
                  '\naye aye'
                  '\nget the fuck out of my face'
                        "\n"
                  "\nI'm not yo bro"
                  "\nI'm not yo homie"
                  '\n他來求我'
                  '\n他來攀關係 他說'
                  '\n「我無法只是普通朋友'
                  '\n感情已那麼深 叫我怎麼能放手」'
                  '\n（威～ 太矯情了吧朋友？）「但你說…」'
                        "\n"
                  '\n朋友跟我分享他的新歌'
                  '\n他只想我幫他分享沒管我有沒有聽歌'
                  '\n找我合作想著怎麼賣票 發稿 才好'
                  '\n演唱會來賓我直接放他鳥 娃'
                        "\n"
                  '\n朋友不肯放過我 纏著我 裝熟說'
                  '\n老朋友認識都這麼久 小時候回憶好wonderful 忘了嗎'
                  '\n我是你國小的同學的舅舅的柴犬的寵物醫生的室友 是哦'
                  '\n一點印象都沒有 no 我只記得那隻狗'
                        "\n"
                  '\n後來朋友說我大頭症 不知那根筋不對'
                  '\n兄弟知道我在打頭陣 當我後勤部隊'
                  '\n現在朋友會來約我 都是為了吸引妹來虧'
                  '\n我兄弟約我 我的兄弟 本人 就是 妹'
                        "\n"
                  '\nnah 我朋友背後捅我 我朋友背後弄我'
                  '\n我朋友被我轟走還要跪求解除封鎖'
                  '\n我兄弟比我還要反社會'
                  '\n對fake ass 比較直接'
                  '\n都說 get the fuck out of my face'
                        "\n"
                  "\nI'm not yo bro"
                  "\nI'm not yo homie"
                  "\nI'm not yo man"
                  "\nno you don’t know me"
                  "\nI'm not yo guy"
                  "\nI'm not yo 兄弟"
                  "\nI'm not yo 誰誰誰"
                  '\naye aye'
                  '\nget the fuck out of my face'
                        "\n"
                  "\nI'm not yo bro"
                  "\nI'm not yo homie"
                  '\n他來求我'
                  '\n他來攀關係 他說'
                  '\n「我無法只是普通朋友'
                  '\n感情已那麼深 叫我怎麼能放手 但你說」'
                  '\n（威～ 齁… 這樣子我… 情何以堪啦）'
                        "\n"
                  '\n直到我朋友裝成兄弟的小帳號套我話'
                  '\n我朋友截圖兄弟的塗鴉牆爆我卦'
                  '\n我兄弟朋友用我名義對外烙狠話'
                  '\n直到我兄弟朋友為了利益設局fuck him up'
                  '\n我慎選我的兄弟 但他不懂區分'
                  '\n直到兄弟因他朋友業障替我犧牲'
                  '\n再也不講道義 不值錢沒什麼好做保的'
                  '\n別再稱兄道弟 大家朋友一場就好了'

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


class dreamSongpage5 extends StatefulWidget {
  const dreamSongpage5({Key? key}) : super(key: key);

  @override
  State<dreamSongpage5> createState() => _dreamSongpage5State();
}

class _dreamSongpage5State extends State<dreamSongpage5> {
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
                      await player.play(AssetSource('dreamS5.mp3'));
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
                  child: Image(image: AssetImage("image/dream5.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【大頭大頭】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n詞/曲：熊仔"
                        "\n製作：熊仔/RGRY"
                  '\n編曲：RGRY'
                  '\n童謠：熊智銳'
                  '\nmix/master：J.Wu'
                  "\nCover Art：c.a.chou"
                        "\n"
                        "\nIt ain’t the same now!"
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
                    "\n大頭大頭"
                   '\n下雨不愁'
                    '\n人家有some'
                    '\nI want it all, I want it all'
                    "\n"
                  '\n把不到妹妹就巴頭'
                  '\n吧檯的妹妹都被我把走'
                  '\n抱進包廂and we popping bottles'
                  '\n日美英法德俄models我一次戰八國'
                  '\n拿簽約金換一台Lambo'
                  '\n暴發戶豹子膽bout to暴走'
                  '\nbought them rollies and rollies'
                  '\n我都一直忘記我只有兩隻手不懂何時罷手'
                        "\n"
                  '\n每晚不同馬子滾我棉被'
                  '\n上面混了20種香水味'
                  '\n狗仔停在路口整晚沒睡'
                  '\n他們耐心好比賞鳥協會'
                  '\n限定版 塞滿我的鞋櫃'
                  '\n代言接不完 誰還跟你在那業配的'
                  '\n談個好價碼 then I get paid'
                  '\n談個好價碼 沒有原則不能違背的'
                        "\n"
                  '\n時代的眼淚 滿手的煙味'
                  '\n過氣了還自稱前輩'
                  '\n乖乖在我背景當我點綴'
                  '\n謙卑學習你該叫我 sensei'
                  '\n叫你主管出來 給我換個單位'
                  '\n友情價是天價 天天都在翻倍'
                  '\n新台幣 人民幣 美金 比特幣'
                  '\n數字不變 只是換個單位'
                        "\n"
                  '\n別拿bullshit來煩我 去找我經紀人講'
                  '\n別讓粉絲來纏我 別讓他擠進人牆'
                  '\n說我患有大頭症 你不是第一個講'
                  '\n我就是大頭 不管 小頭 快要精盡人亡'
                        "\n"
                  '\n大頭大頭 it ain’t the same now'
                  '\n下雨不愁 I make it rain now'
                  '\n鎂光燈閃'
                  '\n鎂光燈閃'
                        "\n"
                  "\n大頭大頭 it ain’t the same now"
                  '\n下雨不愁 I make it rain now'
                  '\n人家有some'
                  '\nI want it all, I want it all'
                        "\n"
                  '\n以前我覺得做主流好荒謬'
                  '\n現在我覺得我以前好荒謬'
                  '\n你沒有資格我說我real不real'
                  '\n只要誘惑夠大有誰不會將就'
                  '\n戶頭blowing up讓我好頭大'
                  '\n衣櫥放不下讓我好頭大'
                  '\nbitches showing love讓我小頭大'
                  '\n私訊爆炸 I thought I told ya'
                        "\n"
                  '\n大頭大頭 下雨不愁'
                  '\n家喻戶曉everybody knows'
                  '\n大頭在各大頭版everywhere I go'
                  '\n跨國代言他們駕馭不了的行頭'
                  '\n人家有some I want it all'
                  '\nI run the world 建立自己的王國'
                  '\n國境內以私法運作'
                  '\n陟罰臧否別以身試法honey'
                        "\n"
                  '\n像我漢堡麵包要白芝麻 你給我黑芝麻'
                  '\n他媽是白痴嗎 連這種芝麻小事也能搞砸'
                  '\n你純心想搞我是吧？ 笑什麼笑'
                  '\n反正豹子膽爆炸是效果是吧？'
                  '\n哈 說個笑話 我手中有各大製作人的電話號碼 一通電話 你就從這圈子蒸發'
                        "\n"
                  '\n不錄了 不錄了 不錄了'
                  '\n女主角誰啊 我聽都沒聽過'
                  '\n不錄了 不錄了 不錄了'
                  '\n帽子我戴不下給我重訂做'
                  '\n不錄了 就說錄音別排在早餐前'
                  '\n你還排三點 沒時間觀念'''
                        '\n我起床前都是早上很難懂嗎是你逼我翻臉'
                        "\n"
                    '\nI want all bling everything 金碧輝煌'
                    '\n我的舉手投足都造成經濟成長'
                    '\n說我患有大頭症 你不是第一個講'
                    '\n我就是大頭 不管 小頭 快要精盡人亡'
                        "\n"
                    "\n大頭大頭 it ain’t the same now"
                    '\n下雨不愁 I make it rain now'
                    '\n鎂光燈閃'
                  '\n鎂光燈閃'
                        "\n"
                  "\n大頭大頭 it ain’t the same now"
                  '\n下雨不愁 I make it rain now'
                  '\n人家有some'
                    '\nI want it all, I want it all'
                        "\n"
                  '\n大頭大頭'
                  '\n下雨不愁'
                  '\n人家有傘'
                  '\n我有大頭'
                  '\n大頭大頭'
                  '\n下雨不愁'
                  '\n人家有傘'
                  '\n我有大頭'
                        "\n"
                  '\n能否在我笑容僵掉之前按下快門'
                  '\n捕捉那從我瞳孔消逝的靈魂'
                  '\n能否在我笑容僵掉之前按下快門'
                  '\n捕捉那從我瞳孔消逝的靈魂'
                  '\n我笑得好累'
                  '\n我累得好好笑'
                  '\n我笑得好累'
                  '\n我累得好好笑'

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


class dreamSongpage6 extends StatefulWidget {
  const dreamSongpage6({Key? key}) : super(key: key);

  @override
  State<dreamSongpage6> createState() => _dreamSongpage6State();
}

class _dreamSongpage6State extends State<dreamSongpage6> {
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
                      await player.play(AssetSource('dreamS6.mp3'));
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
                  child: Image(image: AssetImage("image/dream6.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【夢中夢 Dream within a Dream】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n詞/曲：熊仔"
                        "\n製作：熊仔/RGRY"
                  '\n編曲：RGRY'
                  '\nfeaturing：宋念宇'
                  '\n鋼琴：張頌亞'
                  '\n和聲：宋念宇 熊仔'
                  '\nmix/master：J.Wu'
                  "\nCover Art：c.a.chou"
                        "\n"
                        "\n我到底睡了多久？"
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
                    "\n不同的城市 同個故事"
                    '\n不同的粉絲 同種注視'
                    '\n不同的音軌 重複錄製'
                    '\n不同的巡迴 演無數次'
                    "\n"
                    '\n不同的光芒 同樣刺眼 像把我穿透'
                    '\n不同的訪綱 同樣嗜血 等著我犯錯'
                    '\n不同的房號 同樣失眠 和夢魘纏鬥'
                    '\n不同處方藥 同樣制約 暫時性挽救'
                        "\n"
                    '\n不同人知道我 但沒人認識我'
                    '\n不同人需要我 沒人敢正視我'
                    '\n不同的治療後 沒人能根治我'
                    '\n不同的包裝粉飾後我感到更赤裸'
                    '\n當這loop重複'
                  '\n靈魂和肉體逐漸不同步'
                  '\n不同的佈景 上演同個劇情 不同幕'
                  '\n抽離後看著自己變麻木'
                  '\nJust like deja vu'
                        "\n"
                  '\n而當我又被陌生眼神圍繞'
                  '\n鎂光燈聚焦'
                  '\n浮躁的喧鬧'
                  '\nSkr 煞車聲伴隨刺耳尖叫'
                  "\nMan you're sick as hell"
                  '\n有人拿著麥克風在宣告'
                  "\nMan you're sick as hell"
                  '\n回憶閃過像音樂劇前導'
                        "\n"
                  '\nIs it real'
                  '\n註定的人生 像由人編造'
                  '\nIs it real'
                  '\n宿命都成真 是否是圈套'
                  '\nIs it real'
                  '\n當畫面顛倒'
                 '\n顏色被抽離只剩線條'
                        "\n"
                  '\n一瞬間忘記我在追夢中 還是睡夢中'
                  '\n我像是身處一場很真實的夢中夢'
                  '\n造神 毀神 標準 流程'
                  '\n掌聲 噓聲 一轉身 鴉雀無聲'
                        "\n"
                  '\n俯瞰山腳下的城市沈睡'
                    '\n那曾是珍貴的人事物 驀然回首人事已非'
                    '\nEverything fading away'
                    '\n已沒有了退路 只能向上奮力的推'
                    '\n推著我的罪惡感'
                    '\n每個晚上 質問著我會不會扼腕'
                    '\n為了短暫的歡愉'
                    '\n讓那業障不斷堆砌 積沙成塔'
                    '\n已無法急剎車 像邁向註定結局希臘神話'
                    "\n然而當我達到山頂 I'll be recognized"
                  '\n悲劇夠經典也能永遠被記載 right？'
                        "\n"
                  "\nAnd I'll never rest"
                  "\nTil I'm higher than Everest"
                  '\nA legend that will never die'
                  "\nI'll never die!"
                  '\n而當熱潮逐漸退散'
                  '\n人群減半'
                  '\n失去新鮮感'
                  '\n娛樂版 追尋下個天團'
                  "\nMan you're end has come"
                  '\n有人拿著診斷書在宣判'
                  "\nMan you're end has come"
                  '\n回憶閃過像漫畫格片段'
                        "\n"
                  '\nIs it time'
                  '\n夢想的成真 永遠最璀璨'
                  '\nIs it time'
                  '\n陪葬的純真 鮮少人揭穿'
                  '\nIs it time'
                  '\n當畫面旋轉'
                  '\n顏色被抽離只剩黑暗'
                        "\n"
                  '\n一瞬間忘記我在追夢中 還是睡夢中'
                  '\n我像是身處一場很真實的夢中夢'
                  '\n造神 毀神 標準 流程'
                  '\n掌聲 噓聲 一轉身 鴉雀無聲'
                        "\n"
                  '\n大石頭大石頭'
                  '\n爬坡爬坡'
                  '\n夢中曾經有人承諾我將獲得解脫'
                  '\n作為交換條件 某部分的我被奪走'
                  '\n究竟為何 在夢中卻已渾濁'
                  '\n夢醒後 內容回想起總是荒謬'
                  '\n迴盪的殘響隱約聽見終將再次重逢'
                  '\n帶著參悟 帶著困惑 一步步邁向業果'
                  '\n大石頭大石頭'
                    '\n爬坡爬坡'

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


class dreamSongpage7 extends StatefulWidget {
  const dreamSongpage7({Key? key}) : super(key: key);

  @override
  State<dreamSongpage7> createState() => _dreamSongpage7State();
}

class _dreamSongpage7State extends State<dreamSongpage7> {
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
                      await player.play(AssetSource('dreamS7.mp3'));
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
                  child: Image(image: AssetImage("image/dream7.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【卡提諾 CK101】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n詞/曲：熊仔"
                        "\n製作人：熊仔、rgry"
                    '\n編曲：rgry'
                    '\n弦樂：蘇子茵'
                    '\n和聲/和聲編寫：陳思函'
                  "\nmix/master：J.Wu"
                        "\n"
                        "\nYou don’t need a moral for an IG story"
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
                    "\nHashtags give me those"
                    '\n觸擊率 還不夠'
                        '\n儘管讚我 愛我 笑我 噓我 恨我 罵我'
                        '\nI need more'
                        '\nYah'
                        '\n狂到登上卡提諾'
                        '\nYah yah'
                    "\n"
                        "\nYah, I don't need no mansions"
                        '\nI just need more mentions'
                        "\nI don't need your friendship"
                        '\nJust give me more attention'
                        '\nI need more'
                        '\nYah'
                        '\n狂到登上卡提諾'
                        '\nYah Yah'
                        "\n"
                        '\n點閱率是新的貨幣 yah'
                        '\n人們在網路上做戲 yah'
                        '\n可以 go viral 幹嘛 go deep'
                        "\nYou don't need a moral for an IG story"
                        '\n隨著氾濫的流量 yah'
                        '\n貨幣開始通貨膨脹 yah'
                        '\n以前十萬就能衝上排行'
                        '\n現在百萬點擊還不如個內容農場'
                        "\n"
                        '\n廣告商是地下錢莊'
                        '\n初衷全都拿來典當'
                       '\n鎖定目標對象 加強推廣'
                        '\n只為 讓你五秒之後關掉視窗'
                        '\n串流平台不再撥款'
                        '\n分享量驟降 沒人願意週轉'
                        '\n他們說 guess what 朋友 風水輪流轉'
                        '\n誰叫你要把存在感刷到信用破產'
                        "\n"
                        '\nGive me that 動新聞'
                        '\nGive me that 狂新聞'
                        '\nGive me that 假新聞 炒新聞'
                        '\n有新聞就是好新聞'
                        '\nGive me that 今週刊'
                        '\nGive me that 鏡週刊'
                        '\nGive me that 娛樂版 社會版 八卦版 joke版'
                        "\nShit I'll do anything for that 頭版"
                        "\n"
                        '\nHashtags give me those'
                        '\n觸擊率 還不夠'
                        '\n儘管讚我 愛我 笑我 噓我 恨我 罵我'
                        '\nI need more'
                        '\nYah'
                        '\n狂到登上卡提諾'
                        '\nYah, yah'
                        "\n"
                        "\nYah, I don't need no mansions"
                        '\nI just need more mentions'
                        "\nI don't need your friendship"
                        '\nJust give me more attention'
                        '\nI need more'
                        '\nYah'
                        '\n狂到登上卡提諾'
                        '\nYah, yah'
                        "\n"
                        '\nMake, make, make a fuss to make a buzz'
                        '\nHa I made you look'
                        "\nYou're slave to a page on my Facebook"
                        '\nInstagram YouTube Dcard 微博 推特'
                        '\nFuck your fans homie I got more haters'
                        "\n"
                        '\n點閱率是新的毒品 yah'
                        '\n一旦成名無法甦醒 yah'
                        '\n戒不掉的戒斷'
                        '\n視窗不斷切換'
                        '\nShit what the fuck am I doing'
                        '\n毒引發作發文發到 fucking 發抖'
                        '\n不怕你罵只怕你 unfollow'
                        '\n無法自拔到處發起戰役'
                        '\n但是連看戲的都看膩了這場爛戲'
                        "\n"
                        '\n媒體是販毒集團'
                        '\n缺貨時 擋一下用劣質八卦洗版'
                        '\n曾經如此仇視 多麼諷刺'
                        '\n如今藥物控制著我的全身器官 yah'
                        '\n其實我們沒有這麼不一樣'
                        '\n當你分享我的痛 還不是想有觸擊量'
                        '\n所以快一點 分享鍵打開一點'
                        '\n不管你在嗑什麼 全都給我來一點'
                        "\n"
                        '\nGive me that 動新聞'
                        '\nGive me that 狂新聞'
                        '\nGive me that 假新聞 炒新聞'
                        '\n有新聞就是好新聞'
                        '\nGive me that 今周刊'
                        '\nGive me that 鏡周刊'
                        '\nGive me that 娛樂版 社會版 八卦版 joke版'
                        "\nShit I'll do anything for that 頭版"
                        "\n"
                        '\nHashtags give me those'
                        '\n觸擊率 還不夠'
                        '\n儘管讚我 愛我 笑我 噓我 恨我 罵我'
                        '\nI need more'
                        '\nYah'
                        '\n狂到登上卡提諾'
                        '\nYah yah'
                        "\n"
                        "\nYah, I don't need no mansions"
                        '\nI just need more mentions'
                        "\nI don't need your friendship"
                        '\nJust give me more attention'
                        '\nI need more'
                        '\nYah'
                        '\n狂到登上卡提諾'
                        '\nYah yah'
                        "\n"
                        '\nI need more'
                        '\nI need more'
                        '\nI need more'
                        '\nSpots tliug eht dna emos ekat (I need something more)'
                        '\nSpord tliug eht dna eno ekat (I need more!)'
                        '\n蹋糟它將手親 (something more)'
                        '\nEvol laer ym yawa werht I (I need more!)'
                        '\nSpots tliug eht dna emos ekat (I need something more)'
                        '\nSpord tliug eht dna eno ekat (I need more!)'
                        '\nXobllip ym ni synnax'
                        '\nXonlits lynatnef (I need!)'

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


class dreamSongpage8 extends StatefulWidget {
  const dreamSongpage8({Key? key}) : super(key: key);

  @override
  State<dreamSongpage8> createState() => _dreamSongpage8State();
}

class _dreamSongpage8State extends State<dreamSongpage8> {
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
                      await player.play(AssetSource('dreamS8.mp3'));
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
                  child: Image(image: AssetImage("image/dream8.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【失真 Derealization】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n詞/曲：熊仔"
                        "\n製作人：李權哲、熊仔"
                    '\n編曲：李權哲、rgry'
                    '\n和聲：李權哲'
                    '\n和聲編寫：李權哲、熊仔'
                  '\nmix/master：rgry'
                        "\n"
                        "\nI can’t tell what is real anymore."
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
                    "\n走偏了 淪陷了 矇騙了"
                    '\n我自己和曾深愛的'
                    '\n枕邊人 你倦了 殘缺的靈魂等累了'
                    '\n你 留了盞夜燈'
                    '\n沈睡了 孱弱的餘溫'
                    '\n冷卻了 記憶枕頭印著你的淚痕'
                    "\n"
                    '\n可笑嗎 當初在溫熱的被窩'
                    '\n睡前隨口'
                    '\n的囈語都成真了'
                    '\n可悲吧'
                    '\n潛意識的罪咎'
                    '\n也一語成了讖'
                    '\n那無邪的初衷'
                    '\n龜裂出了 無底的窟窿'
                    '\n將純粹的我 與真切的你 永隔絕了'
                        "\n"
                    '\n如果在你夢中我們仍維持熟悉睡姿'
                    '\n也許夢比我的空洞世界真實'
                    '\n無數鎂光燈將僅存回憶過曝吞噬'
                    '\n都失真了 全失真了 我失真了'
                        "\n"
                    '\n而當妳最後一次別過頭'
                    '\n好後悔沒挽留妳的眼眸'
                    '\n讓妳激動的沈默'
                    '\n烙印上視網膜'
                    '\n我沒能捕捉'
                    '\n妳隨時間逐漸的混濁'
                    "\nI can't tell what is real anymore"
                        "\n"
                  '\n都失真了 什麼是真的？'
                  '\n這失真感 全失衡了'
                  '\n你是真的 我是真的 失真'

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


class dreamSongpage9 extends StatefulWidget {
  const dreamSongpage9({Key? key}) : super(key: key);

  @override
  State<dreamSongpage9> createState() => _dreamSongpage9State();
}

class _dreamSongpage9State extends State<dreamSongpage9> {
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
                      await player.play(AssetSource('dreamS9.mp3'));
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
                  child: Image(image: AssetImage("image/dream9.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【...夢中夢中夢中夢中... 】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n詞/曲：熊仔"
                        "\n製作人：熊仔、rgry"
                    '\n編曲：rgry'
                    '\n吉他：翁光煒'
                    '\n電子琴：張頌亞'
                  '\n結尾鼓組：許沐恩'
                  '\n鼓組錄音師：陳奕夫'
                    "\n輔助合聲：杜振熙、曾冠榕、王之佑、呂士軒、莫康笙、陳亦凡、吳卓源、張譽鐘、李權哲"
                    "\n"
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
                    "\n曾經以為這個世界繞著我轉 "
                        "\n現在我的世界在我眼前旋轉"
                    '\n以為鎮定劑不和我有關 '
                    '\n現在一股一股注入我的血管'
                    '\n以為明天一定花明柳暗 '
                    '\n現在每天昏沈醒來又是夜晚'
                    '\n以為決定能夠做的果斷 '
                    '\n現在才剛使用堅硬手段 '
                    '\n馬上腿軟'
                    "\n"
                    '\n曾經以為自己能夠輕易奪冠 '
                        '\n以為自己成熟'
                    '\n自詡能夠當個模範 看著自己淪落'
                    '\n自我封閉像是囚犯 痛苦自己承受'
                    '\n自己看看自己多爛 自己都不自己'
                    '\n鏡子裡的自己 失去志氣'
                    '\n到底那個人還 是不是你 '
                    '\n好像快要窒息'
                    '\n肢體失去知覺是不是要變成一具屍體 '
                    '\n宣布死期'
                    '\n不斷自我質疑 應該怎麼辦'
                        "\n"
                    '\n喂喂喂⋯'
                    '\n有門開嗎⋯'
                    '\n有人在嗎？'
                    '\n我人在哪？'
                    '\n喂喂喂⋯'
                    '\n我真愛呢？'
                    '\n我曾愛她⋯'
                    '\n我能愛嗎？'
                    '\n喂喂喂⋯'
                    '\n我怎來的？'
                    '\n我怎在這？'
                    '\n那未來呢？'
                    '\n喂喂喂⋯'
                    '\n有人在嗎？'
                    '\n有神在嗎？'
                    '\n我存在嗎？'
                        "\n"
                    '\n薛西弗斯到達山頂後'
                    '\n向神祈求 能否別再讓巨石滾落'
                    '\n無數次的折磨 精神已無法忍受'
                    "\n神對他說 well let's make a deal"
                  '\n醒來後的你將忘記你是薛西弗斯'
                  '\n混濁的回憶將轉化為荒謬神話故事'
                  '\n暫存在你潛意識'
                  '\n在夢中向你低語 幻化成為曲與詞'
                  '\n模糊著虛與實'
                  '\n你將有新的山頂要攻 新的目標'
                  '\n新的暗示引導 新的路標'
                  '\n新的巨石 新的阻撓'
                  '\n新篇章中你是新的主角'
                    '\n而當你聽到我的聲音時 你將重新領悟到'
                        "\n"
                    '\n巨石從來沒有滾落過'
                    '\n這筆交易 你每次都會跟我做'
                    '\n叫我醫生叫我神叫我造物主或叫原作'
                    "\n叫我熊仔 你的存在純屬虛構 "
                        "\nyou're not real"
                        "\n"
                    '\n當你 站上台前 在深呼吸 要拿起麥克風'
                    '\n這首歌將 在你 腦裡 響起 成為你的幻夢'
                  '\n當我 浮上檯面 一如往例 收回你的麥克風'
                  '\n你就 遁入你的夢 '
                        '\n沒關係 我們終將再次重逢'
                        "\n"
                  '\n而每當 有聽眾將 這張專輯再次回放'
                  '\n你將化為薛西弗斯 重返到你最初的樂章'
                  '\n回到無知 再一次輪迴你的業障'
                  '\n將一切遺忘'
                        '\n 是你的束縛也是你的解放'

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


class dreamSongpage10 extends StatefulWidget {
  const dreamSongpage10({Key? key}) : super(key: key);

  @override
  State<dreamSongpage10> createState() => _dreamSongpage10State();
}

class _dreamSongpage10State extends State<dreamSongpage10> {
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
                      await player.play(AssetSource('dreamS10.mp3'));
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
                  child: Image(image: AssetImage("image/dream10.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【夢∙想∙成∙真】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n詞/曲：熊仔"
                        "\n製作人：熊仔／rgry"
                    '\n編曲：rgry'
                    '\n和聲編寫：熊仔'
                    '\n和聲：陳瑾緗／熊仔'
                  "\n混音工程師：rgry"
                    '\n弦樂：蘇子茵'
                    '\n吉他：翁光煒'
                    '\n電子琴：張頌亞'
                    '\n合唱團：葉永菡／黃欣偉／鄭培新（一百）／陳思函'
                    '\n合唱團編寫：陳思函'
                        "\n"
                    "\n你想起來了嗎？"
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
                    "Chapter 1【夢 Pain】"
                    "\n"
                    "\n熊仔有個夢 豹子膽is born"
                    '\n豹子膽象徵著困在幻夢中的痛'
                    '\n困在帕特南的桶內 柏拉圖的洞穴'
                    '\n轟烈的夢卻在你我五十分鐘內徹底崩碎'
                    "\n"
                    '\n當當局者入迷的way too deep'
                  '\n受想行識皆是虛擬 要如何 truth seek'
                  '\n愛恨情仇分明如一齣戲'
                  '\n但如果太順心 豈不是很容易出戲'
                  '\n所以唯有墜落 才能映出他的高潮'
                  '\n脆弱 才能映出高傲 沒有'
                  '\n卑 怎麼映出他的躁'
                  '\n唯有淚 才有笑'
                  '\n沒有罪咎 要從何解脫'
                    "\n"
                  '\n豹子膽因我而生'
                  '\n是我的一部分'
                  '\n是我的喜 我的怒 我的愛與恨'
                  '\n豹子膽是我的創傷 也是療程'
                  '\n我創造的豹子膽 讓我完整'
                    "\n\n\n"
                    "Chapter 2【想 Arising】"
                    "\n"
                    "\n想像 我和你 想像的樣子 不太一樣"
                    '\n你的榜樣 私底下會自卑會狂妄'
                    '\n會絕望 犯錯讓你失望'
                    '\n你會體諒 還是會換風向'
                    "\n"
                    '\n想像 你是我 大可迎合大眾的想像'
                    '\n卻拋棄一切 而選擇從零開始闖蕩'
                    '\n忍受詆毀 忍受仇恨言詞在網上'
                    '\n你會堅持 或敗給現實'
                    "\n"
                    '\n請你想像 熊仔 也只是另個角色包裝'
                    '\n與豹子膽 都不是我認同的價值觀'
                    '\n你仰望 的只是你腦補的想像'
                    '\nare you still a fan？'
                    "\n"
                  '\n最後想像 你和我 都只是造物主的想像'
                  '\n我們永遠 逃不出祂IG的相框'
                  '\n逃不出 註定的業障'
                  "\n你會絕望 或感到被解放？"
                    "\n\n\n"
                    "Chapter 3【成 Removal】"
                    "\n"
                    '\n以幻修真'
                    '\n對幻的渴望所產生的恨'
                    '\n因幻的恐懼所拋棄的真'
                    '\n幻的劇本總一邪一正'
                    "\n"
                    '\n以幻修真'
                    '\n因幻而產生的防衛心'
                    '\n因幻而膨脹的獨特性'
                    '\n幻的劇本總永無止境'
                    "\n"
                    '\n以幻修真'
                    '\n對幻的追求沒有停損點'
                    '\n因幻累積的業終將兌現'
                    '\n幻的劇本是無限迴圈'
                    '\n以幻修真'
                    "\n\n\n"
                    "Chapter 4【真 Liaberation】"
                    "\n"
                    '\n如果所有回憶只是腦海裡的電流'
                    '\n是否全宇宙僅存於我的一個念頭'
                    '\n故事結尾早已藏在卷頭'
                    '\n如果要你選 will you do it all again？'
                    "\n"
                  '\n你我都是神生的'
                  '\n未曾分裂的一部分'
                  '\n你我都是神聖的'
                  '\n塵世讓我忘了我身分'
                    "\n"
                  '\n你我都因神而生'
                  '\n你我都為神而生'
                  '\n你我都有神的真'
                  '\n你我都是神本身'
                  '\n神作了一場夢 因此我誕生'
                  '\n神讓我完整 我讓神完整 這就是 真'

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



