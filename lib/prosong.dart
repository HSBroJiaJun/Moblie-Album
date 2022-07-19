import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:audioplayers/audioplayers.dart';
import 'main.dart';



class proSongpage1 extends StatefulWidget {
  const proSongpage1({Key? key}) : super(key: key);

  @override
  State<proSongpage1> createState() => _proSongpage1State();
}

class _proSongpage1State extends State<proSongpage1> {
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
                        await player.play(AssetSource('proS1.mp3'));
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
                  child: Image(image: AssetImage("image/pro1.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【自信 Confidence】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n製作人：rgry / 熊仔"
                    '\n詞：熊仔 / rohan mills'
                  '\n曲：熊仔 / Mark Pelli / rohan mills'
                  '\n編曲：rgry / Tat Tong / Mark Pelli'
                    '\n和聲：熊仔 / Mark Pelli / 李奕賢'
                  '\n和聲編寫：熊仔 / Mark Pelli / 李奕賢'
                  '\n混音工程師：rgry'
                    '\n母帶後期工程師：John Davis'
                      "\n"
                    "\n「最可怕的不是失去自信 最可怕的是你開始適應」"
                    '\n《自信》這首歌來自熊仔從未揭露深埋心底的肺腑獨白，字字血淚地透過歌曲袒露這些年的心路歷程，赤裸分享自己在陰影裡的自我對話以及提問：當所有堅持與初衷燃燒殆盡，我們是否就如一列早已偏離軌道的列車，渾然脫軌而不自知？'
                    "\n在心理狀態無限墜落而遺忘如何自信，如何「相信自己」的時候，熊仔拾起紙筆以《自信》這首歌重新填補黑暗裡的空白，回歸音樂創作，用三段 verse 的篇幅描繪對病識感、創作與自救的三步療癒階段；一字一句紀錄與充滿恐懼的自我共存的時光。"
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
                    "最可怕的不是失去自信"
                        "\n最可怕的是你開始適應"
                        "\nOne two check it"
                        "\n最可怕的不是失去自信"
                        "\n最可怕的是你開始適應"
                        "\n從2020開始失去自信"
                        "\n我還不知道它如此致命"
                        "\n有病識感才能夠治病"
                        "\n那時不覺得我自己是病了"
                        "\n開始懷疑自己使命"
                        "\n懷疑初衷是否已經逝盡"
                        "\n一切停擺 所有活動歸零"
                        "\n像薛西弗斯也許這就是命"
                        "\nDammmmn 我一直問自己"
                        "\n為何會恨自己"
                        "\n為何我甚至已經喪失能力誠實的"
                        "\n求助在文字裡"
                        "\n放爛的粉絲頁"
                        "\n他真的很自負 很自閉"
                        "\nDammmmn 我開始問自己"
                        "\nAm I sick mentally"
                        "\nThis how its meant to be當我偏離了電機系"
                        "\n如果明天送醫"
                        "\nWill it be shame on me"
                        "\nWill it be天崩地裂 end of me？"
                        "\n最可怕的不是失去自信"
                        "\n最可怕的是你開始適應"
                        "\nOne two check it"
                        "\n最可怕的不是失去自信"
                        "\n最可怕的是 適應"
                        "\n我今天差一點就可以快樂"
                        "\n從2020開始失去自信"
                        "\nL.O.C.K man that shit is 致命"
                        "\n有病識感才能夠治病"
                        "\n敦南心診所給了我診定"
                        "\n樂復得它讓我認命"
                        "\n贊安諾 讓我鎮定"
                        "\n開始太緩和後來才穩定"
                        "\n從一天半顆到一天整錠"
                        "\nDammmmn 恐慌的高峰期"
                        "\n被關在牢籠裡"
                        "\n誰拿著遙控器"
                        "\n邊嘲弄你邊掏空你"
                        "\n細毛樹立在我的毛孔裡"
                        "\n我內心的暴風雨 好封閉 好恐懼"
                        "\nDammmmn 抑鬱的巔峰期"
                        "\n支持都變攻擊"
                        "\n失去了原動力一片空白像填充題"
                        "\n我拿著原子筆 歌詞本變日記"
                        "\n自怨自艾今天日期 9月11"
                        "\n最可怕的不是失去自信"
                        "\n最可怕的是你開始適應"
                        "\nOne two check it"
                        "\n最可怕的不是失去自信"
                        "\n最可怕的是 適應"
                        "\n我今天差一點就可以快樂"
                        "\n從2021開始尋找自信"
                        "\n穿上慢跑鞋我開始制訂 自律 routine"
                        "\n慢跑河濱不管陰雨晴"
                        "\n上升不只體力還有意志力 思緒 篤定"
                        "\n開始重拾快塵封的紙筆"
                        "\n開始填補斷了水的字跡 詞句 處境"
                        "\n開始慢慢脫離藥物奴役"
                        "\n開始學會如何面對窒息 恐懼 突襲"
                        "\n學會把專注力"
                        "\n放在調慢呼吸"
                        "\n半速度的吐數著one two three"
                        "\n學會心存感激"
                        "\n得到倖存轉機"
                        "\n日出前能圖一個good night sleep"
                        "\n最可怕的不是失去自信"
                        "\n最可怕的事 更致命"
                        "\n致命 致命"
                        "\n也許永遠不會治癒"
                        "\n但你聽到這首歌代表我還沒適應"
                        "\n最可怕的不是"
                        "\nYeah"
                        "\nOne two flow it"
                        "\nBut you already know it"
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


class proSongpage2 extends StatefulWidget {
  const proSongpage2({Key? key}) : super(key: key);

  @override
  State<proSongpage2> createState() => _proSongpage2State();
}

class _proSongpage2State extends State<proSongpage2> {
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
                        await player.play(AssetSource('proS2.mp3'));
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
                  child: Image(image: AssetImage("image/pro2.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【星座學家 Dear Astrologist】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n製作：李權哲 / rgry / funkymo / 熊仔"
                    '\n詞/曲：熊信寬'
                  '\n編曲：李權哲 / rgry / funkymo'
                  '\n和聲：熊仔 / 9m88 / 李權哲 / rohan mills'
                    '\n和聲編寫：熊仔 / 9m88'
                    '\nmix：rgry'
                    '\nMastering：rgry'
                        "\n"
                        "\n「妳不是真的關心，只是想要觀星。」- 熊仔, 2022"
                    '\n繼鬍作非為、鬍假唬威的一曲《哥》，這次處女座的熊仔發表了眾直男們不敢說的心聲—《星座學家》，將在這春分、太陽進入牡羊的時節，與天蠍座爵士女伶@9m88一同詮釋理工鋼鐵直男與靈性占星女友的浪漫衝突。'
                  '\n《星座學家》以多聲部 doo-wop 編寫合音，爵士融合 808 配上熊仔令人玩味的饒舌韻腳，其中開頭以復古老歌推進，層層堆疊出男女處理生活糾結方式的大不同，並在副歌段落營造出老歌取樣的質感，稍不注意閉上眼就會跟著老收音機傳來的音樂舞動。'
                  "\n目標是飛向宇宙的理工男，與透過星座運勢調整生活的占星女，男人與女人、理性與感性、科學與占星，都在《星座學家》裡共譜出一場豐盛的科幻浪漫音樂劇。"
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
                    "Oh 星座學家"
                        "\n我們的速配指數有幾趴"
                        "\n水逆危機 該不該出門見他"
                        "\n還是乖乖宅在家"
                        "\n"
                        "\nOh 星座學教主"
                        "\n土象火象我卻像瞎子在摸象"
                        "\n上升月亮 他桃花越來越旺"
                        "\n如何成為他的only one"
                        "\n"
                        "\n服務生剛剛經過 嗯"
                        "\n他很務實他很金牛 呃"
                        "\n我也不是要嘴星座 no"
                        "\n但你連他名字都沒聽過"
                        "\n將他故事完整拼湊"
                        "\n直接信誓旦旦一口"
                        "\n咬定出生時他嬰頭頂上"
                        "\n浮著哪些星球 嗯"
                        "\n"
                        "\n叫我別吵叫我不許 拗"
                        "\n我總吹毛求疵顧慮 多"
                        "\n總在假會總在舞文弄墨"
                        "\n總在嘴砲那些術語"
                        "\n什麼data什麼數據"
                        "\n什麼beta distribution"
                        "\n這麽桀驁這麽不訓"
                        "\n這麼龜毛根本處女 座"
                        "\n"
                        "\nOutta here with that fake shit"
                        "\n臭直男 不懂偽科學"
                        "\n星盤 留給妹子解"
                        "\n唯一支持 NASA SpaceX"
                        "\n你不是真的關心 "
                        "\n只想要觀星"
                        "\nBe a 星探 for the time being"
                        "\n不用擔心 不用搬 天文望遠鏡"
                        "\nWatch me do my thing"
                        "\nIm a star I be shining"
                        "\n"
                        "\nOh 星座學家"
                        "\n我們的速配指數有幾趴"
                        "\n水逆危機 該不該出門見他"
                        "\n還是乖乖宅在家"
                        "\n"
                        "\nOh 星座學教主"
                        "\n土象火象我卻像瞎子在摸象"
                        "\n上升月亮 他桃花越來越旺"
                        "\n如何成為他的only one"
                        "\n"
                        "\n我的寶貝不甩明日氣象"
                        "\n唯一指標國師綺陽"
                        "\n星座排行當 心靈雞湯"
                        "\n為了幸運色買 新衣裳"
                        "\n他說 你寧願淋成落湯雞樣"
                        "\n還是頂著大太陽 出門被彗星撞"
                        "\n"
                        "\n隔壁小明老婆真讚"
                        "\n寶寶生產 日 從著床開始計劃老謀深算 "
                        "\n明天將有七星連線災難"
                        "\n過了十二點 娃 明年再戰"
                        "\n為了把上升牡羊座 生成雙子"
                        "\n羊水破了後 在產房多憋兩個小時"
                        "\n"
                        "\nOutta here with that fake shit"
                        "\n臭直男 不懂偽科學"
                        "\n難道你意思是我出生在別的date"
                        "\n現在我們約的會 會 會是別的date"
                        "\n"
                        "\n你不是想要懂理化 只是想要合理化"
                        "\n把個性劃成可以愛或可以罵"
                        "\n不想占星 只想把你心侵占"
                        "\n與其戰星 座 不如一起去看星戰"
                        "\n"
                        "\nOh 星座學家"
                        "\n我們的速配指數有幾趴"
                        "\n水逆危機 該不該出門見他"
                        "\n還是乖乖宅在家"
                        "\n"
                        "\nOh 星座學教主"
                        "\n土象火象我卻像瞎子在摸象"
                        "\n上升月亮 他桃花越來越旺"
                        "\n如何成為他的only one"
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


class proSongpage3 extends StatefulWidget {
  const proSongpage3({Key? key}) : super(key: key);

  @override
  State<proSongpage3> createState() => _proSongpage3State();
}

class _proSongpage3State extends State<proSongpage3> {
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
                        await player.play(AssetSource('proS3.mp3'));
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
                  child: Image(image: AssetImage("image/pro3.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【哪個胖子 What Fat Dude】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n他跟芳姐說的一樣胖"
                        "\n我慌忙的望向我剛大意放鬆的round belly"
                        "\n狂縮緊我的肚子 zen呼吸"
                        "\n內心卻跟破了洞漏了風的氣球一樣洩氣"
                        "\n"
                        "\n他不是胖他是壯"
                        "\n旁邊妝髮見狀幫腔勉強幫打圓場"
                        "\n宰相肚裡能撐船 我像李鴻章"
                        "\n把肚皮往衣服裡藏匿腹裡的玉米濃湯"
                        "\n"
                        "\n他不是胖他是 放蕩"
                        "\nWhat do u want"
                        "\n鬍鬚張 滷肉飯 滷大腸 肆無忌憚"
                        "\n無局男 Ubereats 每一餐 補點一份鮪魚蛋"
                        "\n湊免運又多一碗 zen的讚"
                        "\n"
                        "\n衣服always oversized"
                        "\nChoose 黑over 白"
                        "\n最能把贅肉遮蓋"
                        "\n如果羅馬不是one day 就能蓋"
                        "\n那我為什麼會overweight overnight"
                        "\n"
                        "\n那個胖子"
                        "\n那個胖子"
                        "\n那個胖子也想當個肌肉棒子"
                        "\n坐在蒸汽房 不敢脫衣裳"
                        "\nGotta lift me some weights"
                        "\nMake that 胸肌bounce bounce bounce"
                        "\n"
                        "\n那個胖子 哪個胖子"
                        "\n那個胖子 哪個胖子"
                        "\nFrom 那個胖子 to 那個肌肉棒子"
                        "\nVilla 落地窗 濕了脫衣裳 girl"
                        "\nGotta show me some love"
                        "\nMake that booty bounce bounce bounce"
                        "\n"
                        "\n快來看 那個胖子 做著棒式"
                        "\n一副難瘦的樣子 ha"
                        "\nIt's a pun 胖子的pun 快來看"
                        "\n那個胖子 凌波棒 一副難過的樣子"
                        "\nAnother pun 胖子的pun"
                        "\n"
                        "\n快來看 那個胖子 做著棒式"
                        "\n一副難瘦的樣子 ha"
                        "\nIt's a pun 胖子的pun 快來看"
                        "\n那個胖子 凌波棒 一副難過的樣子"
                        "\n"
                        "\n小時候胖不是胖"
                        "\n但我小時候又瘦又黃 我長得像營養不良的Pocky棒"
                        "\n誰想得到水漲船高沒長得高"
                        "\n腰圍卻隨著歲月像脫韁野馬狂飆"
                        "\n"
                        "\n為何登台後 總是橫向擴大"
                        "\n是否燈太多 害我臉龐碩大"
                        "\n或你鏡頭運太闊 害我身材豁達"
                        "\n還是是我韻太多 害我身懷六甲"
                        "\n"
                        "\n我說Biggie也很胖啊 他說no 你是偶像"
                        "\n我說我偶像Biggie也很胖啊 no 你是走樣"
                        "\n人家胖since day one 不意外"
                        "\n你想像2pac 有six pack 還狂吃派克雞排"
                        "\n"
                        "\nI didn't choose the fat life the fat life chose me"
                        "\n從麥克雞塊撤離改嗑切塊酪梨"
                        "\nHit em up 健身房加Diet HIIT"
                        "\n在我健出六塊肌前這首別拍MV"
                        "\n"
                        "\n那個胖子"
                        "\n那個胖子"
                        "\n那個胖子也想當個肌肉棒子"
                        "\n坐在蒸汽房 不敢脫衣裳"
                        "\nGotta lift me some weights"
                        "\nMake that 胸肌bounce bounce bounce"
                        "\n"
                        "\n那個胖子 哪個胖子"
                        "\n那個胖子 哪個胖子"
                        "\nFrom 那個胖子 to 那個肌肉棒子"
                        "\nVilla 落地窗 濕了脫衣裳 girl"
                        "\nGotta show me some love"
                        "\nMake that booty bounce bounce bounce"
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


class proSongpage4 extends StatefulWidget {
  const proSongpage4({Key? key}) : super(key: key);

  @override
  State<proSongpage4> createState() => _proSongpage4State();
}

class _proSongpage4State extends State<proSongpage4> {
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
                        await player.play(AssetSource('proS4.mp3'));
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
                  child: Image(image: AssetImage("image/pro4.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【啞巴吃黃蓮 Censored Suffocation】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n啞巴吃黃蓮"
                        "\n有苦說不出"
                        "\n嘴巴說不在乎"
                        "\n心裡面I do"
                        "\n"
                        "\n啞巴吃黃蓮"
                        "\n有苦說不出"
                        "\n嘴巴說不在乎"
                        "\n心裡面I do"
                        "\n"
                        "\nI be like"
                        "\n"
                        "\nMumble rapping like 周杰倫"
                        "\nIchi ni san shi 查克拉卡在我的喉結輪"
                        "\n職場鬥爭 盤根錯節 多麼的多麼的糾結人"
                        "\n大人的世界 只看大數據和algorithm"
                        "\n"
                        "\n說越多我就錯越多所以變得越來越沈默"
                        "\n做越多我就臭越多所以變得越來越冷漠"
                        "\n做一首然後又一首但不見得兩首都能收"
                        "\n左一手 右一手然後大家一起來批鬥"
                        "\n"
                        "\n他們說留一手 先別這麼 急著要露一手"
                        "\n我兩手一攤 新歌聽起來都像二手 羞羞臉囉"
                        "\n你說你說你說"
                        "\n我都在說說 光說不做"
                        "\n但我工作就是說 而不是做作"
                        "\n"
                        "\n你又說我這不能說那不能說 綁住我"
                        "\n所以我縮"
                        "\n自我放逐我"
                        "\n不想從收放自如高自由度的神作 cost down"
                        "\n做成放置型手遊 no fun"
                        "\n誰能幫助我"
                        "\n"
                        "\n啞巴吃黃蓮"
                        "\n有苦說不出"
                        "\n嘴巴說不在乎"
                        "\n心裡面I do"
                        "\n"
                        "\n啞巴吃黃蓮"
                        "\n有苦說不出"
                        "\n嘴巴說不在乎"
                        "\n心裡面I do"
                        "\n"
                        "\n講太多 做太少"
                        "\n想太多 flow太少"
                        "\nI think I'm in a mental stalemate"
                        "\nTrapped in my mind I need a jailbreak"
                        "\n"
                        "\n往後拖 往前倒"
                        "\n我的錯 我檢討"
                        "\nI think I'm in a mental stalemate"
                        "\nTrapped in my mind I need a jailbreak"
                        "\n"
                        "\n是誰說玩音樂的小孩不會變壞"
                        "\n但沒人跟我說 玩音樂的小宅男會職業倦怠"
                        "\n欠債 難還人情 又不肯賤賣"
                        "\n豪宅變凶豪宅 變凶宅要怎麼勸敗"
                        "\n"
                        "\n人比人 氣死人"
                        "\n有人氣到因此失去理智在那一直diss人"
                        "\n有人離世後"
                        "\nBussinessman 想出個紀念版"
                        "\n打開記事本"
                        "\n都是低級梗 只好一直逼死人"
                        "\n"
                        "\n說著自己當主角的地獄梗 給我自己笑"
                        "\n放下心中的大石頭 砸我自己腳"
                        "\n像是lode runner 邊走跳 邊挖洞給我自己跳"
                        "\n導演邊拉線邊對人偶說 給我自己跳"
                        "\n"
                        "\nU either die a hero or watch urself become the villain"
                        "\n我賴著不走 and hopefully become 周杰倫"
                        "\n"
                        "\nU either die a hero or watch urself become the villain"
                        "\n我賴著不走 and hopefully become 周杰倫"
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


class proSongpage5 extends StatefulWidget {
  const proSongpage5({Key? key}) : super(key: key);

  @override
  State<proSongpage5> createState() => _proSongpage5State();
}

class _proSongpage5State extends State<proSongpage5> {
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
                        await player.play(AssetSource('proS5.mp3'));
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
                  child: Image(image: AssetImage("image/pro5.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【風頭上 Waveriders】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n風頭上"
                        "\n他在風頭上"
                        "\nRide the wave boy it's a 瘋狗浪"
                        "\n瘋狗浪 homie"
                        "\nIt's a瘋狗浪"
                        "\n瘋的像買包的瘋婆娘"
                        "\n"
                        "\n在風頭上 他照樣呼風喚雨 鋪天蓋地"
                        "\n與其避避風頭不如搞個烏煙瘴氣"
                        "\nHe a bad ass muther fucker 風流倜儻"
                        "\n從小就罵哭小學班上那個風紀股長"
                        "\n"
                        "\n在風頭上 ride the wave"
                        "\n像在玩衝浪板"
                        "\n讓那些只是過過水的通通聞風喪膽"
                        "\nHe a bad ass muther fucker with a lotta baby mommas"
                        "\n一個像是Lady Gaga 一個像是歐陽娜娜"
                        "\n"
                        "\nBro"
                        "\nHe bout to in ya face"
                        "\nWhen he in ya face"
                        "\n勸你知難而退"
                        "\nBro bro"
                        "\n我勸你你先躲躲"
                        "\n我建議你先lo pro"
                        "\n得避避他的風頭 風頭"
                        "\n"
                        "\n風頭上"
                        "\n他在風頭上"
                        "\nRide the wave boy it's a 瘋狗浪"
                        "\n瘋狗浪 homie"
                        "\nIt's a瘋狗浪"
                        "\n瘋的像買包的瘋婆娘"
                        "\n"
                        "\n看他大 出風頭"
                        "\n看他惹 出風波"
                        "\nHe keeps his cool cool cool"
                        "\n像站在冷氣的出風口"
                        "\n"
                        "\n人神共憤"
                        "\n共犯結構"
                        "\n意識流"
                        "\n切面英雄"
                        "\n是否有幸能夠作停留"
                        "\n停車做愛楓林晚"
                        "\n根本沒有人要跟尼晚"
                        "\n因為你的身體短"
                        "\n你根本不會用元氣彈蛋我"
                        "\n像大支在幹天津飯"
                        "\n"
                        "\n把你砍像是氣元斬"
                        "\n季節變換你姐姐變壞蛋"
                        "\n你弟弟妹妹都開始有變化了"
                        "\n那就代表"
                        "\n我長大了"
                        "\n我風了"
                        "\n"
                        "\n沒有那麼笨"
                        "\n沒你那麼笨"
                        "\n你們超不ㄊㄣˋ"
                        "\n你們不會玩"
                        "\n只會耍智障"
                        "\n伸手不見五指那"
                        "\n我一定不會拍手也不會給你任何一個大拇指"
                        "\n"
                        "\n放銅板"
                        "\n在你碗"
                        "\n仔哩ㄙㄥˋ好好玩的話哩再慢慢玩玩看看"
                        "\n以以歪歪太失態還是帥像是王以太"
                        "\n上面有放一塊液態氮"
                        "\n唱做愛自己那一段我把毛巾扯下來的時候直接在台上露蛋蛋"
                        "\n高跟鞋 踩破他蛋蛋"
                        "\n"
                        "\n風頭上"
                        "\n他在風頭上"
                        "\nRide the wave boy it's a 瘋狗浪"
                        "\n瘋狗浪 homie"
                        "\nIt's a瘋狗浪"
                        "\n瘋的像買包的瘋婆娘"
                        "\n"
                        "\n看他大 出風頭"
                        "\n看他惹 出風波"
                        "\nHe keeps his cool cool cool"
                        "\n像站在冷氣的出風口"
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


class proSongpage6 extends StatefulWidget {
  const proSongpage6({Key? key}) : super(key: key);

  @override
  State<proSongpage6> createState() => _proSongpage6State();
}

class _proSongpage6State extends State<proSongpage6> {
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
                        await player.play(AssetSource('proS6.mp3'));
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
                  child: Image(image: AssetImage("image/pro6.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【哥 BRO】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n製作：rgry / 熊仔"
                    '\n詞/曲：熊信寬 / POPO J / 王ADEN'
                  '\n編曲：熊仔 / rgry / 李權哲'
                  '\n小號：黃線 HuangXian'
                  '\n和聲：熊仔 / 王ADEN / rgry'
                  '\n和聲編寫：熊仔 / 王ADEN / rgry'
                    '\nmix：rgry'
                    "\nMastering：rgry"
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
                    "\n晉升哥字輩 但還是貝戈戈"
                        "\n多少妹子像是弟子 整天背哥的歌"
                        "\n用著進化歌喉配上犀利歌詞"
                        "\n饒舌歌手看到哥都開啟迷弟模式"
                        "\n"
                        "\n私訊密哥 說 ㄟ 熊仔哥歹勢"
                        "\n能不能 跟仔哥 要個載歌載點"
                        "\n想要跟著仔哥的歌 載歌載舞"
                        "\n任仔哥的punchline 宰割海扁"
                        "\n"
                        "\n愛聽歌的女孩 這種哥愛"
                        "\n愛哥的收藏 哥忍痛割愛"
                        "\n但別寄生哥的good life"
                        "\n每晚都要哥愛戴"
                        "\n哥不愛戴就怪哥 ㄍ ㄨㄞˋ 怪"
                        "\n"
                        "\n太愛寬哥 子膽哥 快術之乾戈"
                        "\n叫弟的親妹 別一直喊哥乾哥"
                        "\n別搞到割腕流血 不想被drama 耽擱"
                        "\n別奢望哥挽留姐 哥頂多寫首輓歌"
                        "\n"
                        "\n哥trip 哥vibes with that 哥shit"
                        "\n哥livin 哥life droppin 哥 music"
                        "\n哥哥 flex on them with my 哥bae"
                        "\nShe's a bad shawtie in a 哥way"
                        "\n"
                        "\n哥making 哥moves in that 哥whip"
                        "\n哥in a 哥mood bumpin 哥的hits"
                        "\n哥哥 flex on them with my 哥bae"
                        "\nKeep a bad shawtie in a 哥shape"
                        "\n"
                        "\n說到哥 哥我當得最久"
                        "\n妹妹都愛來找哥對酒當歌 每晚喝到醉酒"
                        "\n年紀比哥大的姐姐們也都愛把哥當哥"
                        "\n哥哥應付不過來只好叫弟弟幫哥擋 幫個忙"
                        "\n"
                        "\n弟們都來follow me 稱呼哥是big brother"
                        "\n不斷地bother me 林北嘎哩巴叻"
                        "\n都想來找哥feat. 出現在哥哥的歌裡"
                        "\n哥不理他們 還不停 哥的哥的 拜託哥理"
                        "\n"
                        "\n別再跑來認我 問我可否叫我大哥"
                        "\n哥大有可為 管你叫我大大還是哥哥"
                        "\n哥哥大可把你罵到怕了不用大的音量"
                        "\n用歌詞把到心上人 順便打到你心上"
                        "\n"
                        "\n別再打哥的大哥大 哥哥在呼呼大睡"
                        "\n哥哥不只很偉大 哥哥還很大尾"
                        "\n弟發現 哥發揮的大絕 不到一成的功夫"
                        "\n崇拜哥的舉手投足 搶當哥的手足"
                        "\n"
                        "\n哥trip 哥vibes with that 哥shit"
                        "\n哥livin 哥life droppin 哥 music"
                        "\n哥哥 flex on them with my 哥bae"
                        "\nShe's a bad shawtie in a 哥way"
                        "\n"
                        "\n哥making 哥moves in that 哥whip"
                        "\n哥in a 哥mood bumpin 哥的hits"
                        "\n哥哥 flex on them with my 哥bae"
                        "\nKeep a bad shawtie in a 哥shape"
                        "\n"
                        "\nI'm your 兄 your my my lil bro"
                        "\nI'm getting all the models all you got is lil hoe"
                        "\n我才20歲 你要好好反省"
                        "\nLook at your lazy ass 我都為你擔心"
                        "\n"
                        "\n每一天晚上 its where I make difference"
                        "\n哥所以成長 因為哥願意犧牲"
                        "\n我在跟熊做歌 哥們gon殺無赦"
                        "\nOh my god"
                        "\n"
                        "\n弟不想當弟 弟想當尼哥"
                        "\n弟沒有創意 弟一昧的迷哥"
                        "\n弟 想要跟哥一樣的霸氣"
                        "\n弟想當大哥 哥比較想當大帝"
                        "\n"
                        "\n凱薩 Julius Caesar 哥comes 哥sees"
                        "\n哥 conquers整個戈壁"
                        "\n牆頭草 快來依附哥的惡勢力"
                        "\n看好風向 記得考慮哥的柯氏力"
                        "\n"
                        "\n哥寫歌沒格式 哥寫的每個字"
                        "\n都讓弟 嘆為觀止 像是哥德式"
                        "\n哥的尺寸 可是德式"
                        "\n德意志的得意技 繼承哥的哥的意志"
                        "\n"
                        "\n哥給弟 幾個建議 好好聽著"
                        "\n書中自有黃金 看看哥的藏經閣"
                        "\n精益求精 弟別只寫口水歌"
                        "\n弟 大吃一精 終於成為拓也哥"
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


class proSongpage7 extends StatefulWidget {
  const proSongpage7({Key? key}) : super(key: key);

  @override
  State<proSongpage7> createState() => _proSongpage7State();
}

class _proSongpage7State extends State<proSongpage7> {
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
                        await player.play(AssetSource('proS7.mp3'));
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
                  child: Image(image: AssetImage("image/pro7.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【流動 interlude】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\nI've been numb for so long"
                        "\n是你讓我流動"
                        "\nI've been numb for so long"
                        "\n是你讓我流動"
                        "\n"
                        "\n一定要用這麼多 才能有感覺嗎"
                        "\n每一次掏出了心又讓麻木感疊加"
                        "\n已經過了這麼久 傷口還沒結痂"
                        "\n又一次雕刻這稍縱即逝的雪花"
                        "\n"
                        "\n只是想要有人說"
                        "\n你沒有做錯"
                        "\n一切都會癒合"
                        "\nIt won't hurt no more"
                        "\n"
                        "\n他對我說"
                        "\nLet go of your ego"
                        "\n小我只是軀殼"
                        "\nTake good care of your soul"
                        "\n"
                        "\nI've been numb for so long"
                        "\n是你讓我流動"
                        "\nI've been numb for so long"
                        "\n是你讓我流動"
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


class proSongpage8 extends StatefulWidget {
  const proSongpage8({Key? key}) : super(key: key);

  @override
  State<proSongpage8> createState() => _proSongpage8State();
}

class _proSongpage8State extends State<proSongpage8> {
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
                        await player.play(AssetSource('proS8.mp3'));
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
                  child: Image(image: AssetImage("image/pro8.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【能火 Zenfire】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                        "\n製作人：rgry / 李權哲 / 熊仔"
                        "\n編曲：熊仔 / rgry / 李權哲 / A2daC / YB"
                        '\n和聲：熊仔 / 李權哲 / YB'
                        '\n和聲編寫：熊仔'
                        '\n採訪取樣：李明依 / 蔣同慶'
                        '\n混音工程師：rgry'
                        "\n母帶後期工程師：John Davis"
                        "\n"
                        "\n大型車禍現場是對失敗演出的嘲諷"
                        '\n但對撞擊測試假人來說是無數次的磨練之路'
                        '\n我在寫這首歌時本來希望做出一首能給奧運選手得獎時享受光榮 慶祝的勝利之歌'
                        '\n做完我才發現這是一首獻給沒有拿到獎牌的選手 但仍選擇再次回到訓練場地的意志力主題曲'
                        '\n也許很多人認為音樂最重要的還是聽感 聆聽度 但我永生難忘的都是改變我人生觀的作品'
                        '\n價值觀與思想的傳遞 才是我心目中嘻哈的核心'
                        '\nThis is my proudest work yet'
                        "\nJermaine taught me"
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
                    "\n這不是那種給你好好聽的"
                        "\n這是那種給我好好聽著"
                        "\n我不是那種一直在那講的"
                        "\n我都直接走上台拿獎的"
                        "\n"
                        "\nDamn"
                        "\nThrow your shade baby"
                        "\nIt's ok baby"
                        "\nI can take it"
                        "\n給你嘴baby"
                        "\n沒空回baby yeah"
                        "\n"
                        "\n我不是那種健身自拍開合跳的"
                        "\n是那種在健身房妹子找我拍合照的"
                        "\n不是那種 求神問卦拜寺廟的"
                        "\nI deserve 我該得到的"
                        "\nI believe in higher powers"
                        "\n"
                        "\n我不是那種為了洗腦沒話說的"
                        "\n是那種幫你清洗腦袋技巧沒話說的"
                        "\n歌不做今年主流的 做那種會千古留著"
                        "\n不是那種變主流的 我是來改變主流的"
                        "\n"
                        "\n不是那種把粉絲當數字的"
                        "\n把觀眾當成對談對象雙眼注視著"
                        "\n這首送給墨烏陳芃 Sylvia"
                        "\n從無限追到大嘻哈的"
                        "\n喉嚨喊到超級啞的"
                        "\n"
                        "\n不要你的崇拜 要你的尊敬"
                        "\n不要限時動態 要你的聲音"
                        "\n而當我迷航 失去我恆星"
                        "\n不要你的護航 我要你的真心"
                        "\n"
                        "\n這不是那種給你好好聽的"
                        "\n這是那種給我好好聽著"
                        "\n我不是那種一直在那講的"
                        "\n我都直接走上台拿獎的"
                        "\n"
                        "\nDamn"
                        "\nThrow your shade baby"
                        "\nIt's ok baby"
                        "\nIt's ok"
                        "\nIt's ok baby"
                        "\nI'm ok"
                        "\n"
                        "\nI just made a hit"
                        "\n晚上被攻擊 失眠"
                        "\nThen I made another hit"
                        "\n挨罵的功力 修煉 升級 再修煉"
                        "\n"
                        "\n大數據時代 被比較成績"
                        "\n被比較年薪 被比較人氣"
                        "\n天生 聲線 偏 弱 被取笑嫌棄"
                        "\n差點要忘記 I'm a real MC"
                        "\n"
                        "\nI do me u do u"
                        "\n你走你的idol 路"
                        "\n不是idol 錯"
                        "\n只是我沒idol 愛修圖"
                        "\n不跟你搏版面 不跟你搶首頁"
                        "\n沒歌不發文 我一次消失兩個月"
                        "\n"
                        "\n打開IG"
                        "\n謝謝你們支持我"
                        "\n但關注歌就好別關注我的私生活"
                        "\n做越大越不可能回覆每個攻擊"
                        "\n21年才學會被誤解的勇氣"
                        "\n"
                        "\n這不叫包袱 這叫做原則"
                        "\n我對自己比stu sis 還嚴格"
                        "\nI see the bigger picture"
                        "\n我身在索尼音樂娛樂"
                        "\n但我知道音樂不只是娛樂"
                        "\n"
                        "\nJermaine taught me"
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


class proSongpage9 extends StatefulWidget {
  const proSongpage9({Key? key}) : super(key: key);

  @override
  State<proSongpage9> createState() => _proSongpage9State();
}

class _proSongpage9State extends State<proSongpage9> {
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
                        await player.play(AssetSource('proS9.mp3'));
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
                  child: Image(image: AssetImage("image/pro9.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【才子 Talented】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n才子才子"
                        "\n年夜飯一年一度得面對的life crisis"
                        "\n還沒擺好筷子 阿嬤化身Mike Tyson"
                        "\nPunchline 開噴 乖孫看你堂哥當了律師"
                        "\n戴勞力士開著勞斯萊斯"
                        "\n"
                        "\n才子才子"
                        "\n鄉民在嘻哈版一個個等著拆你台子"
                        "\n查你IP懷疑你是不是stu sis"
                        "\n不停改寫腦補黑歷史like 儒林外史"
                        "\nWhy u do me like this"
                        "\n"
                        "\n才子才子 要不要來一段"
                        "\n666 才藝time"
                        "\n手比著rocker 嘴裡喊yoyoyo"
                        "\n講話用著饒舌tone"
                        "\n疊字像是寶可夢"
                        "\n垃圾話傳到耳中"
                        "\n卻像冷嘲熱諷"
                        "\n"
                        "\n叔叔說 恨鐵不成鋼 恨鐵不成鋼"
                        "\n電腦工程師不當 去上五燈獎"
                        "\nWatch me prove them wrong"
                        "\nWatch me prove them wrong"
                        "\n鐵比鋼的磁場強 難怪我鐵粉正成長"
                        "\n"
                        "\n才子才子才子"
                        "\n媽媽說才華不能當飯吃"
                        "\n但鷹流老闆聽了哪個胖子"
                        "\n每次都請我吃到肚子脹死"
                        "\n"
                        "\n才子才子才子"
                        "\n姑媽說玩音樂會路邊凍死"
                        "\n他沒看過我的衣櫥櫃子"
                        "\n穿不完的帽子衣服鞋子"
                        "\n"
                        "\n才子才子"
                        "\n同學會is a struggle 逼你唱lifes a struggle"
                        "\nAka 派對殺手"
                        "\n唱到第二段嚴肅的空氣逼得你快不能呼吸"
                        "\n面臨終身排擠的你說 呃不然我先咖囉"
                        "\n"
                        "\n才子才子"
                        "\n你社團人數太少 導致"
                        "\n找不到 教授要當指導老師"
                        "\n社員隨著新說唱的退潮消失"
                        "\n找不到社辦鑰匙"
                        "\n學長還不借教室"
                        "\n"
                        "\n才子才子"
                        "\n鬧出了家庭革命"
                        "\n家人說孩子認清現實別再"
                        "\nTrapped in a dream"
                        "\n他們的愛因話筒失真成了掛心和命令"
                        "\n其實只是希望彼此能把話聽的進"
                        "\n"
                        "\n叔叔說 恨鐵不成鋼 恨鐵不成鋼"
                        "\n電腦工程師不當 去上五燈獎"
                        "\nWatch me prove them wrong"
                        "\nWatch me prove them wrong"
                        "\n鐵比鋼的磁場強 難怪我的鐵粉正成長"
                        "\n"
                        "\n才子才子才子"
                        "\n媽媽說才華不能當飯吃"
                        "\n但鷹流老闆聽了哪個胖子"
                        "\n每次都請我吃到肚子脹死"
                        "\nThank you takamine san"
                        "\n"
                        "\n才子才子才子"
                        "\n姑媽說玩音樂會路邊凍死"
                        "\n他沒看過我的衣櫥櫃子"
                        "\n穿不完的帽子衣服鞋子"
                        "\n"
                        "\n想起那曾不把我當根蔥或放眼中的"
                        "\n現在我上台唱五分鐘 賺他的年終"
                        "\n沒有終生俸 但我有死忠聽眾"
                        "\nI got fans reciting word by word song by song"
                        "\n"
                        "\n現在我媽媽坐在VIP 看我演唱會"
                        "\n我阿爸出席金音獎 看我拿獎盃"
                        "\n我表弟表妹住LA 中文不太講"
                        "\n但他們同學都會唱 買榜 買榜"
                        "\n"
                        "\n總有人會低估你才華的價值"
                        "\n總有夢想被沒夢做的人殺死"
                        "\n總有未來被長輩的規劃挾持"
                        "\n但我找到我的天職"
                        "\nThat is why I'm jobless"
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


class proSongpage10 extends StatefulWidget {
  const proSongpage10({Key? key}) : super(key: key);

  @override
  State<proSongpage10> createState() => _proSongpage10State();
}

class _proSongpage10State extends State<proSongpage10> {
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
                        await player.play(AssetSource('proS10.mp3'));
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
                  child: Image(image: AssetImage("image/pro10.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【鬧鈴與愛歌 Favorite Alarm】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n他們說熊仔 你歌裡太多負能量"
                        "\n當藝人不能醬 形象不像Kumachan"
                        "\n你那些東西不能上"
                        "\n不能讓 粉絲跟著唱的歌"
                        "\n沒有商業價值 媒體們沒有辦法幫你做文章"
                        "\n"
                        "\n然後你feature 別找素人唱"
                        "\n人家沒有發行商"
                        "\n版權一定出狀況"
                        "\n歌先hold著儲能量"
                        "\n記得定期開直播照顧流量"
                        "\n否則你粉絲負成長"
                        "\n啊你開的時候別總穿得像個路人樣"
                        "\n"
                        "\n無奈的是"
                        "\n當音樂當職業後"
                        "\n多好多跟音樂無關的事"
                        "\n當心累的時候"
                        "\n寫了堆口是心非無感的詞"
                        "\n一趟單車兩小時 我只擠出三個字"
                        "\n"
                        "\n曾一早起來就卯起來的我"
                        "\n如今撞牆期來時鬧鈴一響起來"
                        "\n我跳起來按掉就是不想起來"
                        "\nUninspired 躺在床上苦苦等著創意來"
                        "\n天窗一開 狂delay 又狂deny 又放了兩禮拜"
                        "\n"
                        "\nI love my job"
                        "\n把夢想當成職業"
                        "\n像把愛歌設成鬧鈴"
                        "\n主題曲如今成了噪音"
                        "\nBut does my job love me"
                        "\n"
                        "\n好想放假"
                        "\n一樣都是旋律"
                        "\n一個讓你陶醉"
                        "\n一個讓你憔悴"
                        "\n放個長長長長長假期"
                        "\n"
                        "\n回想起剛開始創作的貪念是"
                        "\n成為Streetvoice 的關鍵字"
                        "\n每首demo 平均點閱數字兩三百 四百算多的"
                        "\n一首歌八百整個瘋了 這首歌中了"
                        "\n"
                        "\n搭客運來回八小時 只為了上台三分鐘"
                        "\n客運上的乘客數量多於台下觀眾"
                        "\n傳單寫著泳池趴 結果是社區游泳趴"
                        "\n現場沒有妹 叫游泳的阿嬤們全部都跟著懂滋大"
                        "\n"
                        "\n那時沒有粉絲 但一定要辦粉專"
                        "\n叫系上同學按個讚"
                        "\n還被按decline"
                        "\n你們看著辦 總有一天我會萬人斬"
                        "\n幻想著滿人參劈蛋堡都來專程看"
                        "\n"
                        "\n沒有頭路 沒有收入"
                        "\n但很投入 頭 對著拍"
                        "\n每天重複 吃飯睡覺and I hit the rhyme"
                        "\n喬伊說 為了錢之前 都是為了愛"
                        "\n但在堆了錢之前 這圈子超難捱"
                        "\n"
                        "\nI love my job"
                        "\n把夢想當成職業"
                        "\n像把愛歌設成鬧鈴"
                        "\n主題曲如今成了噪音"
                        "\nBut does my job love me"
                        "\n"
                        "\n好想放假"
                        "\n一樣都是旋律"
                        "\n一個讓你陶醉"
                        "\n一個讓你憔悴"
                        "\n放個長長長長長假期"
                        "\n"
                        "\n一樣是旋律 曾經讓你陶醉"
                        "\n曾經讓你掉淚"
                        "\n循環播放all day"
                        "\n如今讓你憔悴"
                        "\n聽覺已經好疲累"
                        "\n由愛生恨的感覺真的超級灰"
                        "\n但其實你說到底對這愛歌 不是沒有愛了"
                        "\n愛只是被遮蓋了"
                        "\n愛被設成鬧鈴後伴隨而來的不愉快感給取代了"
                        "\n那是種條件反射"
                        "\n像聽到"
                        "\n老司機們都上了車"
                        "\n"
                        "\n重拾自信的胖子 解除封口令"
                        "\n站上風頭 哥 成為才子們的借鏡"
                        "\n如果夢想職業化像把愛歌設成鬧鈴"
                        "\n我要活的每天巴不得被愛歌叫醒"
                        "\n"
                        "\n夢想與showbiz"
                        "\n浪漫與bullshit"
                        "\n才華與focus"
                        "\n鬧鈴與愛歌"
                        "\n代價與妥協"
                        "\n好的與壞的現在一併接受 yeah"
                        "\nCus this that pro shit"
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

