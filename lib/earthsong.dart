import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:audioplayers/audioplayers.dart';
import 'main.dart';


class earthSongpage1 extends StatefulWidget {
  const earthSongpage1({Key? key}) : super(key: key);

  @override
  State<earthSongpage1> createState() => _earthSongpage1State();
}

class _earthSongpage1State extends State<earthSongpage1> {
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
                      await player.play(AssetSource('earthS1.mp3'));
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
                  child: Image(image: AssetImage("image/earth1.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【Way Up】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n詞：瘦子E.SO、Karina Buhr、Melvin A. Couch"
                        "\n曲：瘦子E.SO 、Karina Buhr、Melvin A. Couch、A-FLIGHT 崔欽翔"
                        "\n製作人：A-FLIGHT 崔欽翔"
                        "\n編曲：A-FLIGHT 崔欽翔"
                        "\n錄音師：A-FLIGHT 崔欽翔"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：林清智 Zachary Lin "
                        "\n混音工作室：全區通行錄音室 All Access Studio"
                        "\n"
                        "\n當你以為我是你那煽情的背景音樂或是渲染你生活的默片，你一定沒搞清楚狀況！聽完這首，如果你還是不懂，沒事！"
                        "\n記得再把我捧高一點！"
                        "\n我註定要坐大位，會當凌絕頂，並一覽眾山小！"
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
                    "\nEverybody out my way"
                        "\nB***ch you know I came to win"
                        "\nEverybody out my way"
                        "\n像是天註定我要坐大位"
                        "\nEverybody out my way"
                        "\nB***ch you know I came to win"
                        "\nEverybody out my way"
                        "\n像是天註定現在坐大位"
                        "\n"
                        "\n2006頑童被我拉進這個rap game"
                        "\n我們懂個屁 推進戰線"
                        "\n幾個冬的時間我讓電台放我唱片"
                        "\n他們懂個屁 只要賺錢"
                        "\n我是本教科書來加強你的鍛鍊"
                        "\n待在原地 目睹整個轉變"
                        "\n幫你打造一個童年讓你活在HipHop世界現在懷念那些good old day"
                        "\n "
                        "\nE.SO你唱兇點"
                        "\n忘了這個年頭還有人想冒風險"
                        "\nI don’t crave for no fame but I’m do own it"
                        "\n你要教我怎麼做 兄弟你吃藥沒"
                        "\n "
                        "\nBack in the day I was trapped"
                        "\nNowaday I flow on it  "
                        "\n社會單純 電視上面都在演"
                        "\nMoney Power Respect 讓人換嘴臉"
                        "\n喬治笑的開心 說他沒看走眼"
                        "\n"
                        "\nEverybody out my way"
                        "\nB***ch you know I came to win"
                        "\nEverybody out my way"
                        "\n像是天註定我要坐大位"
                        "\nEverybody out my way"
                        "\nB***ch you know I came to win"
                        "\nEverybody out my way"
                        "\n像是天註定現在坐大位"
                        "\n"
                        "\nB***ch I’m way up way up way up"
                        "\nWay up Way up Way up"
                        "\nWay up Way up Way up"
                        "\n"
                        "\n精簡 明顯 說的不多 But I’m really mean it"
                        "\n幾顆心 與我並肩 數量不多但也足夠我走永遠"
                        "\nCan’t you see I keep winning 頂點"
                        "\n噴發所有才華你女友的臉"
                        "\n你的船即將擱淺 無倖免 面對大浪吞口口水08是颱風眼"
                        "\n但這感覺讓我變噁心 "
                        "\n圍繞我身邊都是生意"
                        "\n販賣我自己所有名氣 "
                        "\n每個禮拜不同的商品"
                        "\n瘦子請 麻煩你 將商品 拿高點 笑一點 離你臉 更靠近"
                        "\nIG版 都是你 發不出 新專輯 好多錢  ***  大明星"
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


class earthSongpage2 extends StatefulWidget {
  const earthSongpage2({Key? key}) : super(key: key);

  @override
  State<earthSongpage2> createState() => _earthSongpage2State();
}

class _earthSongpage2State extends State<earthSongpage2> {
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
                      await player.play(AssetSource('earthS2.mp3'));
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
                  child: Image(image: AssetImage("image/earth2.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【祖先】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n你還要些什麼 They want some old shit"
                        "\n把你要的食材一次都補貨"
                        "\n讓你許個願望我來幫你實現"
                        "\n湊滿七顆龍珠克林又復活"
                        "\n我笑他人看不穿他笑我瘋癲"
                        "\n我的祖宗在天上也點著頭"
                        "\n清明掃墓回家榮耀我的祖先"
                        "\n"
                        "\n我姓曾名昱善"
                        "\n曾是曾國藩的曾"
                        "\n我爸說姓曾的真的文化深"
                        "\n從小到大 這家教的傳承"
                        "\n讓我行得端也能坐得正"
                        "\n從小耳濡目染四書五經儒家五聖for real"
                        "\n引經也據典I'm a teacher U know"
                        "\n我開口 你點頭 就像是李白杜甫"
                        "\n邊喝酒邊 吟詩 battle"
                        "\n從容 飛到了 空中"
                        "\n你們通通 睜大你 瞳孔"
                        "\n接下來姓曾的用音樂攀頂登峰"
                        "\n幾年後拿下個獎項光耀祖宗"
                        "\n不管住哪都住在新莊這個小鎮"
                        "\nRap two forty two hood star 的保證"
                        "\n我留著曾子的血 注定不同的差別"
                        "\nHowZ 的Z一定要大寫 因為 represents 曾"
                        "\n"
                        "\n你還要些什麼 They want some old shit"
                        "\n把你要的食材一次都補貨"
                        "\n讓你許個願望我來幫你實現"
                        "\n湊滿七顆龍珠克林又復活"
                        "\n我笑他人看不穿他笑我瘋癲"
                        "\n我的祖宗在天上也點著頭"
                        "\n清明掃墓回家榮耀我的祖先"
                        "\n"
                        "\n我叫耳東陳昱榕叫我全名加上部首"
                        "\n你隨時複誦 像練習武功 我不再補充"
                        "\n就是那種男人得到老天全部眷顧"
                        "\n你想要知道"
                        "\nwhat's the difference between me and you"
                        "\n我捲起褲管今年豐收農作物 全部售出"
                        "\n新的面孔來光顧 但他們不懂what I do"
                        "\n我是幹什麼吃的 你管我身體上刺的"
                        "\n有什麼樣的故事呢 they only know me on GQ"
                        "\n他們說我現在變得大"
                        "\n怕我帽子快要戴不下"
                        "\n羊毛 New era 把帽簷壓"
                        "\n出門只有拖鞋配吊嘎"
                        "\n雙腳踩在地上"
                        "\n每年帶來更多的玩家"
                        "\n木柵 木柵 招風樹大 樹大"
                        "\n清點彈藥裝填 開保險 要玩就玩個夠"
                        "\n哥是給了你臉 你不要臉 慢走不送"
                        "\n為我拍手叫好看看這是誰家的骨肉"
                        "\n見過我的10年 知道未來how it go"
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


class earthSongpage3 extends StatefulWidget {
  const earthSongpage3({Key? key}) : super(key: key);

  @override
  State<earthSongpage3> createState() => _earthSongpage3State();
}

class _earthSongpage3State extends State<earthSongpage3> {
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
                      await player.play(AssetSource('earthS3.mp3'));
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
                  child: Image(image: AssetImage("image/earth3.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【達文西 Da Vinci】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n詞：瘦子E.SO"
                        "\n曲：瘦子E.SO、JOSH BEATS 王淳壹"
                        "\n製作人：高仰辰 Tipsy Kao"
                        "\n編曲：JOSH BEATS 王淳壹"
                        "\n錄音師：康家豪 Caxton Kang"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：林清智 Zachary Lin"
                        "\n混音工作室：全區通行錄音室 All Access Studio"
                        "\n"
                        "\n是價值連城還是一文不值？《達文西》批判眾口鑠金的炒作亂象！"
                        "\n《達文西》這首相當有趣又諷刺的饒舌創作中，瘦子以硬蕊嘻哈風格帶上超兇的 Beat做基底，以「達文西 Da Vinci」這位經典畫家的一生，影射當代藝術創作者所遭遇的荒謬，更重砲批判現今藝術創作與價值紛紛被炒作的社會亂象。"
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
                    "\n他說那個小子抄襲你的flow你怎麼沒反應"
                        "\n我說爛貨會被抄襲嗎 你入個什麼戲"
                        "\n一點poetry我的押韻都靠機率就像lottery "
                        "\n有時感覺良好樂透全餐我都包得起"
                        "\n亞歷山大花一輩子成就羅馬 "
                        "\n現在他的雕像在大英博館的長廊"
                        "\n上帝花一週創造萬物 你說是說法 "
                        "\n全世界的十字架 我問你哪個還有真仿"
                        "\n任何東西他都有個價 胖的媳婦最後還是有人嫁"
                        "\n美的藝術也許是個醜人畫 保佑我的兄弟雪球最後都能滾得大"
                        "\n"
                        "\nMillion dollar million dollar DaVinci million dollar DaVinci"
                        "\nMillion dollar million dollar DaVinci million dollar DaVinci"
                        "\n"
                        "\n賣家信口開河反正有人信"
                        "\n限量鞋款開盒什麼價都有人訂"
                        "\n上市股票怎麼賣呢 躺在家裡等錢進"
                        "\n等到整艘船載沉 泡沫全流進大河"
                        "\n歌手掛了大家開始轉貼"
                        "\n歌全成了經典非常感謝"
                        "\nR.I.P塞爆你社交軟件"
                        "\n他活的時候沒那麼大版面"
                        "\n人們期待下一個活的畢卡索"
                        "\n沒有媒體還有什麼事你認同"
                        "\nBanksy過了碎紙機後該不該要拍手"
                        "\n沒有女孩的氣球他價錢還是持續升空"
                        "\n"
                        "\n跟上這時代"
                        "\nThat’s the vibe "
                        "\nI ain’t gonna lie "
                        "\nthat shit cost a lot"
                        "\n她常常在搬家"
                        "\n那都是好的life"
                        "\n你裱著框的pussy "
                        "\nhomie she’s a thot"
                        "\n"
                        "\n沒有Golden age"
                        "\n你活在裡面"
                        "\n回首才能夠體會"
                        "\n熊市才來算盈虧"
                        "\n看似平凡的一夜"
                        "\n你一樣洗洗回家睡"
                        "\n隔天翻倍了Bored Ape"
                        "\n哇幹 出事了阿伯"
                        "\n"
                        "\n貨幣是虛的"
                        "\n但有人看得起"
                        "\n你玩的是什麼"
                        "\n有人玩的是條命"
                        "\n真實的價值比不過"
                        "\nCryptocurrency "
                        "\n自問自答幾千年了"
                        "\nSocratic questioning"
                        "\n "
                        "\nMillion dollar million dollar DaVinci million dollar DaVinci"
                        "\nMillion dollar million dollar DaVinci million dollar DaVinci"
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


class earthSongpage4 extends StatefulWidget {
  const earthSongpage4({Key? key}) : super(key: key);

  @override
  State<earthSongpage4> createState() => _earthSongpage4State();
}

class _earthSongpage4State extends State<earthSongpage4> {
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
                      await player.play(AssetSource('earthS4.mp3'));
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
                  child: Image(image: AssetImage("image/earth4.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【People】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n詞：瘦子E.SO"
                        "\n曲：瘦子E.SO 、高仰辰 Tipsy Kao"
                        "\n製作人：高仰辰 Tipsy Kao"
                        "\n編曲：高仰辰 Tipsy Kao"
                        "\n錄音師：康家豪 Caxton Kang"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：林清智 Zachary Lin"
                        "\n混音工作室：全區通行錄音室 All Access Studio"
                        "\n"
                        "\n燒死那女巫《People》直視輿論霸凌的醜陋人性"
                        "\n在這首歌中瘦子與製作人Tipsy這位老戰友聯手，再次展現無間默契，俐落的 Beat 風格讓這首歌所要講述的輿論霸凌議題恰如其分的呈現。而這個主題是他從當前社會中汲取道的靈感，描述當前社會所充斥著帶風向、言語攻擊到處出征的亂象。而他也意識到，只要有《People》人類的存在，其實輿論霸凌從古至今一直都有，只是霸凌的方法改變了：從將古早時代女巫吊起來燒死，到現代社會肉搜受害者讓他飽受恐懼，不變的永遠是霸凌者那醜陋的人性，而這正是他要在這首歌裡，要與《People》一起與之對抗的命題。"
""                    , style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 22),
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
                    "\nYella smells good 當他想引人注意"
                        "\n或許他不屑身邊只想熟人靠近"
                        "\nThey want that old me compare to the new me"
                        "\n我不需要再等你 換你慢慢努力"
                        "\nPick a side pick a side you had no thought"
                        "\nYou only talk loud 每次當你怕"
                        "\n你聽著別人怎麼講才知道自己怎麼想"
                        "\n再到處跟人講 You act you know a lot"
                        "\nPeople are dumb mostly for real"
                        "\n帶風向帶風向 風就能夠把你左右"
                        "\n二十篇報導就能說服你去吃狗肉"
                        "\n隨民意接受新的事物觀念依然是守舊"
                        "\n一人說十人說百萬訂閱"
                        "\n好了大家都講好了政治正確"
                        "\n從現在開始一起打壓異類"
                        "\n其他人都不對"
                        "\n其他人都有罪"
                        "\n多自由的世界你保佑你的單位生意興隆"
                        "\n婆說婆有理有錢就能夠塞你金口"
                        "\n輿論就是力量根本不用秀出肌肉"
                        "\n最近又無聊了討論別人的私生活"
                        "\n"
                        "\n那女人謀殺親夫她是個王八蛋"
                        "\n原來她老公會家暴他是個王八蛋"
                        "\n誰幫殺人犯在辯護律師是王八蛋"
                        "\n神經病又被判無罪那醫生王八蛋"
                        "\n"
                        "\n你們都是殺人犯但你們沒種動手"
                        "\n你看那豪宅不順眼但你們沒種放火"
                        "\n哪天他走水了你在旁邊淋點汽油"
                        "\n這雲端啊多美好啊沒有警察能夠動我"
                        "\n說出來吧你想看他死你想看他糗"
                        "\n你想看有錢人不快樂因為自己活得窮"
                        "\n你想看藝人沒了光環還能紅多久"
                        "\n你想看他人的失敗提醒自己都還不錯"
                        "\n"
                        "\n當你指著他說你已經被別人洗腦"
                        "\n你想法哪裡來的你已經被別人洗腦"
                        "\n我怎麼會知道呢我可能也被人洗腦"
                        "\n那既然我們都是笨蛋你在大聲三小"
                        "\n"
                        "\n他們說現在孩子乖了校園沒以前暴力"
                        "\n霸凌它沒有不見只是上線換個場地"
                        "\n沒有人教壞我們 人類啊就這個德性"
                        "\n兩千年前殺了耶穌現在要換穆斯林"
                        "\n"
                        "\n你需要這個服務 讓你生活能夠舒壓"
                        "\n燃起你的火把 我們燒死這女巫吧"
                        "\n對錯誰說的算 你只期待一場撲殺"
                        "\n愛雖然很嘮叨 我們依然喊到沙啞"
                        "\n你需要這個服務 讓你生活能夠舒壓"
                        "\n燃起你的火把 我們燒死這女巫吧"
                        "\n對錯誰說的算 你只期待一場撲殺"
                        "\n愛雖然很嘮叨 我們依然喊到沙啞"
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


class earthSongpage5 extends StatefulWidget {
  const earthSongpage5({Key? key}) : super(key: key);

  @override
  State<earthSongpage5> createState() => _earthSongpage5State();
}

class _earthSongpage5State extends State<earthSongpage5> {
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
                      await player.play(AssetSource('earthS5.mp3'));
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
                  child: Image(image: AssetImage("image/earth5.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【Tiffany】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n我待在回憶流連 忘了海水這麼冰 就算喝多了斷片"
                        "\nShe does not belong to me"
                        "\n她的味道Tiffany Tiffany Tiffany"
                        "\nTiffany Tiffany blue"
                        "\nTiffany Tiffany Tiffany"
                        "\nTiffany Tiffany Tiff"
                        "\n"
                        "\n是誰的香水讓這陣風變性感"
                        "\n把那一年的畫面全都帶進來"
                        "\n那沙灘還算乾淨幾個垃圾袋"
                        "\n那時候台北沒太多淨灘習慣"
                        "\n活得簡單 涼爽的樹蔭"
                        "\nCheers with beer 都買最便宜"
                        "\n那麼多的人我只會記得妳"
                        "\n全部的女孩只有她的味道 Tiffany"
                        "\n我叫她Tfiiany像是海的顏色 不是她的本名"
                        "\n但聽起來多麼解熱 螢光色的bikini 全身古銅色"
                        "\n色澤brown sugar 等著人來招呼呢"
                        "\n我帶著我的bae 大家都有伴 所以我們沒有聊到太多天"
                        "\n我知道我不對偷偷盯著看 除了妳以外其他人都發現"
                        "\n"
                        "\n"
                        "\n我待在回憶流連 忘了海水這麼冰 就算喝多了斷片"
                        "\nShe does not belong to me"
                        "\n她的味道Tiffany Tiffany Tiffany"
                        "\nTiffany Tiffany blue"
                        "\nTiffany Tiffany Tiffany"
                        "\nTiffany Tiffany Tiff"
                        "\n"
                        "\n那天以後再也沒有遇見她 Thank god 我再也沒有遇見她"
                        "\n讓她的香味在我腦裡繼續的揮發 我選擇陌生如果太近夢想會崩塌"
                        "\n長大後發現那香味時常回來 是款女生的愛 香味飄在人海"
                        "\n認識許多Tiffany 但不是那個女孩 我想她大概換了新的品牌"
                        "\n"
                        "\nI wonder what she's doing who she's hanging with"
                        "\n她熱愛著陽光 熱愛跑海邊 又過了個夏天 是否又曬黑"
                        "\n一群北海岸的青少年"
                        "\nI wonder what she's doing who she's hanging with"
                        "\n她熱愛著陽光 熱愛跑海邊 又過了個夏天 是否又曬黑"
                        "\n一群北海岸的青少年"
                        "\n"
                        "\n我待在回憶流連 忘了海水這麼冰 就算喝多了斷片"
                        "\nShe does not belong to me"
                        "\n她的味道Tiffany Tiffany Tiffany"
                        "\nTiffany Tiffany blue"
                        "\nTiffany Tiffany Tiffany"
                        "\nTiffany Tiffany Tiff"
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


class earthSongpage6 extends StatefulWidget {
  const earthSongpage6({Key? key}) : super(key: key);

  @override
  State<earthSongpage6> createState() => _earthSongpage6State();
}

class _earthSongpage6State extends State<earthSongpage6> {
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
                      await player.play(AssetSource('earthS6.mp3'));
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
                  child: Image(image: AssetImage("image/earth6.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【Lucid Dream】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n詞：瘦子E.SO"
                        "\n曲：瘦子E.SO 、A-FLIGHT 崔欽翔"
                        "\n製作人：A-FLIGHT 崔欽翔"
                        "\n編曲：A-FLIGHT 崔欽翔"
                        "\n和聲編寫：P.i.N范品頤/靛藍音程工作室"
                        "\n和聲：P.i.N范品頤"
                        "\n錄音師：A-FLIGHT 崔欽翔"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：林清智 Zachary Lin "
                        "\n混音工作室：全區通行錄音室 All Access Studio"
                        "\n"
                        "\n等妳翻身、再來一波拍手聲，《Lucid Dream》拜託這夢別醒來！"
                        "\n做春夢每個人都有，但不是每個人做的春夢都跟瘦子一樣：這麼色，還色的那麼有質感。這首終極性感的歌曲《Lucid Dream》，這來自瘦子的親身經歷，絕對真人真夢改編，連結尾都毫無作假！歌曲中，瘦子運用專輯主軸的碎拍音樂元素以及非洲節奏樂器，用極度迷幻的音樂風格來誘惑你的聽覺，將夢裡發生那些不太好說出口的情節，以衝突的融合讓整體音樂聲響強烈具有意識流的想像呈現。在聆聽的同時，就忍不住的開始自動幻想，這位行走的賀爾蒙口中的「測量妳的體溫我是溫度計」是什麼樣的情色狀況了。"
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
                    "\n玩得正開"
                        "\nWhen I was lucid dreaming"
                        "\nWhen I was lucid dreaming"
                        "\nI wish I was not dreaming"
                        "\n如果醒來後妳已經不在"
                        "\n如果醒來後世界就不在"
                        "\n如果醒來後床單有YY"
                        "\n這個劇情Pornhub應該要載"
                        "\n如果醒來後妳已經不在"
                        "\n如果醒來後世界就不在"
                        "\n如果醒來後床單有YY"
                        "\n這個劇情Pornhub應該要載"
                        "\n"
                        "\n女人妳火辣 旁人吹捧著妳"
                        "\n我睡衣真邋遢 還來不及整理"
                        "\n我上一秒才睡著現在換了場景"
                        "\n每次眨眼妳都還在卻是不同分鏡"
                        "\n點杯Old Fashion 妳是Fashion Killa通緝犯"
                        "\n殺死現場不該在的所有單身漢"
                        "\n因為 這是 夢境 沒有 生命 "
                        "\n那就現場直接來吧我的愛"
                        "\n"
                        "\n任何事情都有可能 讓我為妳挑件新衣服"
                        "\n說出妳想要的課程 wanna do something nasty on you"
                        "\nMaybe 能夠扮演角色 不是個巧合"
                        "\n妳在想什麼 want a nerd or a thug"
                        "\n變態成分"
                        "\n"
                        "\n玩得正開"
                        "\nWhen I was lucid dreaming"
                        "\nWhen I was lucid dreaming"
                        "\nI wish I was not dreaming"
                        "\n"
                        "\n能夠帶妳上山 Swinging like a 泰山"
                        "\n做場野蠻的愛 讓妳腰閃"
                        "\n萬獸的夜晚一場哺乳類的吶喊"
                        "\n測量妳的體溫我是溫度計"
                        "\n醫生說的話妳不能夠不聽"
                        "\nGirl you too hot 發燒不應該吃冰"
                        "\n轉過身來今晚妳要學教訓"
                        "\n"
                        "\nI slap it that booty 妳回應 的聲音 多頻率"
                        "\n在房間的交響曲"
                        "\n妳吸氣再吐氣 orgasm 從背脊到 頭皮"
                        "\n比Coxxxne還更刺激"
                        "\n巨大敲打聲空間在搖擺"
                        "\n她慢慢消失最後變空白"
                        "\n還沒準備好要難過妳離開"
                        "\n怎麼就 一瞬間 幹我又醒來"
                        "\n"
                        "\nWho the fuck is making that god damn noise"
                        "\n七早八早蓋什麼大樓"
                        "\n搞砸一場完美的創作"
                        "\n那不該是夢"
                        "\n"
                        "\n玩得正開"
                        "\nWhen I was lucid dreaming"
                        "\nWhen I was lucid dreaming"
                        "\nI wish I was not dreaming"
                        "\n如果醒來後妳已經不在"
                        "\n如果醒來後世界就不在"
                        "\n如果醒來後床單有YY"
                        "\n這個劇情Pornhub應該要載"
                        "\n如果醒來後妳已經不在"
                        "\n如果醒來後世界就不在"
                        "\n如果醒來後床單有YY"
                        "\n這個劇情Pornhub應該要載"
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


class earthSongpage7 extends StatefulWidget {
  const earthSongpage7({Key? key}) : super(key: key);

  @override
  State<earthSongpage7> createState() => _earthSongpage7State();
}

class _earthSongpage7State extends State<earthSongpage7> {
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
                      await player.play(AssetSource('earthS7.mp3'));
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
                  child: Image(image: AssetImage("image/earth7.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【Big Girl】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n那個屬於我的大女孩"
                        "\n愛她走路屁股左右擺"
                        "\n念頭在我腦海有點壞"
                        "\n妳的性感怎都沒人管"
                        "\nWhat's popping"
                        "\nBig girl Big girl"
                        "\nBig girl Big girl"
                        "\nBig girl Big girl"
                        "\nCan I see more"
                        "\n"
                        "\nBig girl Big girl"
                        "\nBig girl Big girl"
                        "\nBig girl Big girl"
                        "\nCan I be yours"
                        "\n"
                        "\n我只賺取妳的笑容滿足我自己"
                        "\n妳充滿著自信天氣熱就露肚臍"
                        "\n那些娘炮男生只想女生卡哇伊"
                        "\n讓我把副卡都給妳以後別管卡路里"
                        "\n"
                        "\nLet me see you giggle it 彷彿在著火"
                        "\n美麗的雕塑品適合任何的場所"
                        "\nSomething I don't fuck with"
                        "\n那些瘦骨頭 妳不需要擔心"
                        "\n我身邊a bunch of hoes"
                        "\n"
                        "\n熱愛早晨的exercise"
                        "\n汗流浹背裡外"
                        "\n重複幾個禮拜"
                        "\n"
                        "\n別讓陌生的人傷害"
                        "\n值得好的對待"
                        "\n重複幾個禮拜"
                        "\n"
                        "\n那個屬於我的大女孩"
                        "\n愛她走路屁股左右擺"
                        "\n念頭在我腦海有點壞"
                        "\n妳的性感怎都沒人管"
                        "\nWhat's popping"
                        "\nBig girl Big girl"
                        "\nBig girl Big girl"
                        "\nBig girl Big girl"
                        "\nCan I see more"
                        "\n"
                        "\nBig girl Big girl"
                        "\nBig girl Big girl"
                        "\nBig girl Big girl"
                        "\nCan I be yours"
                        "\n"
                        "\n大女孩很害羞從來不求任何回報"
                        "\n她永遠都在減肥想要擺脫那些綽號"
                        "\n我根本不會在乎妳現在的樣子最好"
                        "\n先在原地轉個圈I wanna see you bust down"
                        "\n"
                        "\n讓妳留在我的後台有人幫妳妝髮"
                        "\n妳不需要尷尬只放大我想法"
                        "\n半個小時之後妳讓所有人都嚇傻"
                        "\n性感又前衛像當年瑪丹娜"
                        "\n"
                        "\n大魚大肉讓她幸福肥"
                        "\n半夜上山逛逛烘爐地"
                        "\n祈求平安像在做實驗"
                        "\n我能嫉妒誰"
                        "\n我能嫉妒誰"
                        "\n大魚大肉讓她幸福肥"
                        "\n半夜上山逛逛烘爐地"
                        "\n祈求平安像在做實驗"
                        "\n我能嫉妒誰"
                        "\n我能嫉妒誰"
                        "\n"
                        "\n"
                        "\n熱愛早晨的exercise"
                        "\n汗流浹背裡外"
                        "\n重複幾個禮拜"
                        "\n"
                        "\n別讓陌生的人傷害"
                        "\n值得好的對待"
                        "\n重複幾個禮拜"
                        "\n"
                        "\n那個屬於我的大女孩"
                        "\n愛她走路屁股左右擺"
                        "\n念頭在我腦海有點壞"
                        "\n妳的性感怎都沒人管"
                        "\nWhat's popping"
                        "\nBig girl Big girl"
                        "\nBig girl Big girl"
                        "\nBig girl Big girl"
                        "\nCan I see more"
                        "\n"
                        "\nBig girl Big girl"
                        "\nBig girl Big girl"
                        "\nBig girl Big girl"
                        "\nCan I be yours"
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


class earthSongpage8 extends StatefulWidget {
  const earthSongpage8({Key? key}) : super(key: key);

  @override
  State<earthSongpage8> createState() => _earthSongpage8State();
}

class _earthSongpage8State extends State<earthSongpage8> {
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
                      await player.play(AssetSource('earthS8.mp3'));
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
                  child: Image(image: AssetImage("image/earth8.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【我的癮 Addiction】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n詞：瘦子E.SO"
                        "\n曲：瘦子E.SO 、A-FLIGHT 崔欽翔"
                        "\n製作人：A-FLIGHT 崔欽翔"
                        "\n編曲：A-FLIGHT 崔欽翔"
                        "\n和聲編寫：P.i.N范品頤/靛藍音程工作室"
                        "\n和聲：P.i.N范品頤"
                        "\n錄音師：A-FLIGHT 崔欽翔"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：林清智 Zachary Lin "
                        "\n混音工作室：全區通行錄音室 All Access Studio"
                        "\n"
                        "\n像女人一樣要命《我的癮》最後能放縱的小小歡愉！"
                        "\n 「我要跟抽菸這件事情一起進棺材」：這是來自一位叫瘦子的人類的名言。"
                        "\n嘻哈的世界裡，瘦子的菸癮似乎是最輕微的壞習慣，而他也從沒掩飾過這點小小的愛好。而他被大家公認為「行走的費洛蒙」，對於女人他覺得與抽菸與這兩件事也似乎有著關連：讓人著迷，也充滿危險。"
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
                    "\n想看到妳當睜開眼睛"
                        "\n溫柔的吻讓我瞇著眼睛"
                        "\n咖啡都來不及妳的清醒"
                        "\n每個呼吸紀錄所有回憶"
                        "\n這個星期又是一場拼命"
                        "\n到了週末能把一切忘記"
                        "\n派對正在進行我沒興趣"
                        "\n就我們兩個現在離開這裡"
                        "\n"
                        "\n陪我多坐一會對妳發點牢騷"
                        "\n讓我找不到妳我的脾氣變的暴躁"
                        "\n這個關係不被看好旁人不停嘮叨"
                        "\n他們沒有想到是妳讓我變得高傲"
                        "\n"
                        "\n不需要 "
                        "\n不需要去做改變"
                        "\n我不想真的寂寞 安靜有很多層面"
                        "\n甩不掉"
                        "\n那就沈溺在裡面"
                        "\n我找不到半句 形容妳我只是有點"
                        "\n"
                        "\n"
                        "\n想被妳的溫度擁抱"
                        "\n想念妳身上熟悉的味道"
                        "\n沒有人比妳可靠"
                        "\n08我現在就要"
                        "\n"
                        "\nIt killing me softly "
                        "\nKilling me softly"
                        "\nKilling me softly"
                        "\nIt killing me"
                        "\n當我沒有了妳"
                        "\n"
                        "\n"
                        "\n我的癮"
                        "\n要我的命"
                        "\nIt bad for me "
                        "\nThat’s what they think "
                        "\n"
                        "\n我的癮"
                        "\n就像愛情"
                        "\nIt make me stink "
                        "\nthat’s what I need"
                        "\n"
                        "\n我的癮"
                        "\n要我的命"
                        "\nIt bad for me "
                        "\nThat’s what they think "
                        "\n"
                        "\n我的癮"
                        "\n就像愛情"
                        "\nIt killing me"
                        "\n當我沒有了妳"
                        "\n"
                        "\n"
                        "\n小時候有妳在我身邊能夠讓我感覺酷"
                        "\n友情歲月的夢讓我不想當個小人物"
                        "\n妳讓我暈頭轉向最後蹲在地上吐"
                        "\n漂亮寶貝要去哪裡讓我跟妳打招呼"
                        "\n"
                        "\n每次我提筆 妳都在這裡 不離不棄"
                        "\n感謝妳提醒 我要的punchline是好主意"
                        "\n想假裝正經 或今晚可能有點叛逆"
                        "\n最後悔金曲 早應該幫妳留點credit "
                        "\n"
                        "\n妳留給我的包袱 我全部吐在地上"
                        "\n台上完美演出下氣接不到上"
                        "\n結交多少兄弟 下一秒就遞上"
                        "\n親愛的我酒醉以後想要get some"
                        "\n"
                        "\nBaby baby 共進美好的晚餐"
                        "\n我們街上太過親密 狗仔想要拍"
                        "\n還是會選擇妳 如果時間能重來"
                        "\n殺了我吧 寶貝陪我一起進棺材"
                        "\n"
                        "\n想被妳的溫度擁抱"
                        "\n想念妳身上熟悉的味道"
                        "\n沒有人比妳可靠"
                        "\n08我現在就要"
                        "\n"
                        "\nIt killing me softly "
                        "\nKilling me softly"
                        "\nKilling me softly"
                        "\nIt killing me"
                        "\n當我沒有了妳"
                        "\n"
                        "\n被妳的溫度擁抱"
                        "\n想念妳身上熟悉的味道"
                        "\n沒有人比妳可靠"
                        "\n08我現在就要"
                        "\n08我現在就要"
                        "\n08我現在 現在就要"
                        "\n"
                        "\n我的癮"
                        "\n要我的命"
                        "\nIt bad for me "
                        "\nThat’s what they think "
                        "\n"
                        "\n我的癮"
                        "\n就像愛情"
                        "\nIt make me stink "
                        "\nthat’s what I need"
                        "\n"
                        "\n我的癮"
                        "\n要我的命"
                        "\nIt bad for me "
                        "\nThat’s what they think "
                        "\n"
                        "\n我的癮"
                        "\n就像愛情"
                        "\nIt killing me"
                        "\n當我沒有了妳"
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


class earthSongpage9 extends StatefulWidget {
  const earthSongpage9({Key? key}) : super(key: key);

  @override
  State<earthSongpage9> createState() => _earthSongpage9State();
}

class _earthSongpage9State extends State<earthSongpage9> {
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
                      await player.play(AssetSource('earthS9.mp3'));
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
                  child: Image(image: AssetImage("image/earth9.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【妹妹 Mei Mei】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n詞：瘦子E.SO"
                        "\n曲：瘦子E.SO 、A-FLIGHT 崔欽翔"
                        "\n製作人：A-FLIGHT 崔欽翔"
                        "\n編曲：A-FLIGHT 崔欽翔"
                        "\n錄音師：A-FLIGHT 崔欽翔"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：林清智 Zachary Lin "
                        "\n混音工作室：全區通行錄音室 All Access Studio"
                        "\n"
                        "\n快樂是一切！《妹妹》用最當下的態度回報歲月"
                        "\n以觀察者角度細膩刻劃女性心境的一首歌。《妹妹》就像我們身邊都有的那種女孩，以單純、無瑕的眼神專注在面前的路上，沉迷於美麗可愛的小事物，也為追求者一句無心的言語而煩惱。但當她終於盼到自己成為女人，終於被人叫著「姐姐！」，卻又朝思暮想那些青澀的時光，用盡手段想回到妹妹的年紀，雖然女孩與女人總被如此反覆的複雜思緒給困擾著，但每個女性在當下總是用盡力氣著閃耀著，活成最好的自己。"
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
                    "\n讓我看到妳的身體"
                        "\n為這首來翻譯"
                        "\n一堆Jealousy"
                        "\nWhat a Hoe  what a bitch "
                        "\n那不礙著妳"
                        "\n扮演誰的生命 想讓誰認識妳 了解妳的內心"
                        "\n"
                        "\nShow me how you move aye 妹妹 You know what’s up "
                        "\n天都為妳晴了 不該待在沙發"
                        "\n我們趕時間阿今年還要荒唐"
                        "\n面著美麗沙灘心中演小劇場"
                        "\n"
                        "\nOh baby 她的年紀比我小了些"
                        "\n那些煩惱我難理解"
                        "\n期待成熟的愛會變更甜 她的高跟鞋 讓她變狼狽"
                        "\n"
                        "\n享受要的快樂妹妹"
                        "\nYou got it"
                        "\nWhere you get that body from 妹妹"
                        "\nKeep moving "
                        "\n妹妹想變成小姐姐"
                        "\n小姐姐"
                        "\n姐姐想被人叫妹妹"
                        "\nWoo 妹妹"
                        "\n"
                        "\n沉迷在鬥艷的花呀"
                        "\n冬天就快要熬過"
                        "\n春天來到雙十年華"
                        "\n穿搭能讓妳頭痛"
                        "\n繽紛又創意的美甲"
                        "\n比中指變得生動"
                        "\n不想跟你混阿 傻子別魯小請你回家自己秤重"
                        "\n她要你有趣點"
                        "\n她要她沒玩過 沒笑過 的內容 忘掉她缺點"
                        "\n她要你愛全部 包括她 用瀏海 遮住的側臉"
                        "\n"
                        "\n稍縱即逝的歲月"
                        "\n抓不住的才顯得珍貴"
                        "\n"
                        "\n享受要的快樂妹妹"
                        "\nYou got it"
                        "\nWhere you get that body from 妹妹"
                        "\nKeep moving "
                        "\n妹妹想變成小姐姐"
                        "\n小姐姐"
                        "\n姐姐想被人叫妹妹"
                        "\nWoo 妹妹"
                        "\n"
                        "\n享受要的快樂妹妹"
                        "\nYou got it"
                        "\nWhere you get that body from 妹妹"
                        "\nKeep moving "
                        "\n妹妹想變成小姐姐"
                        "\n小姐姐"
                        "\n姐姐想被人叫妹妹 oh 妹妹"
                        "\n愛的每個階段的姿色"
                        "\nAge ain’t nothing but a number"
                        "\nOh 妹妹 Oh 妹妹 妹妹 "
                        "\nOh 妹妹"
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


class earthSongpage10 extends StatefulWidget {
  const earthSongpage10({Key? key}) : super(key: key);

  @override
  State<earthSongpage10> createState() => _earthSongpage10State();
}

class _earthSongpage10State extends State<earthSongpage10> {
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
                      await player.play(AssetSource('earthS10.mp3'));
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
                  child: Image(image: AssetImage("image/earth10.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【Married To The Game】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n詞：瘦子E.SO"
                        "\n曲：瘦子E.SO 、Koo, Joseph、A-FLIGHT 崔欽翔"
                        "\n製作人：A-FLIGHT 崔欽翔"
                        "\n編曲：A-FLIGHT 崔欽翔"
                        "\n和聲編寫：P.i.N范品頤/靛藍音程工作室"
                        "\n和聲：P.i.N范品頤"
                        "\n錄音師：A-FLIGHT 崔欽翔"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：林清智 Zachary Lin "
                        "\n混音工作室：全區通行錄音室 All Access Studio"
                        "\n"
                        "\n《Married To The Game》重砲揭開名利場的殘酷遊戲！"
                        "\n前奏一下，響起復古的老上海爵士香頌歌曲，將歌迷瞬間拉回燈光昏黃，老舊的時光映像裡。瘦子在音樂情緒醞釀後直接唱出侵略性十足的匪幫風格饒舌，將商業市場中所遭遇光怪陸離又令人噁心的扭曲生態，句句戳在痛處的大聲講了出來。"
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
                    "\nMarried to the game 夫妻叩首"
                        "\n向天一拋後面等著繡球"
                        "\n來的賓客全部我都不熟"
                        "\n滿天飛的名片開價出售"
                        "\n"
                        "\n恭喜恭喜年輕人我敬你"
                        "\n別不禮貌人家是總經理"
                        "\n巴結一點以後還要靠你"
                        "\n不只他總經理旁邊兩個都總經理"
                        "\n"
                        "\n拍照笑開心一點 小子你要開心一點"
                        "\n老子給成名的機會 你最好記得叫爹爹"
                        "\n原本年輕人的熱戀 到現在直接變冰點"
                        "\n像是沒有性生活的婚姻找不到G點"
                        "\n"
                        "\n入贅豪門大家都說匹配 "
                        "\n我身心疲憊 想換點地位 別踩到地雷"
                        "\n光鮮亮麗背後難免經歷卑微"
                        "\n我沒有辦法頂嘴因為家中還有弟妹"
                        "\n"
                        "\n我根本是共犯 我賺到手軟 摸不著界線"
                        "\n為討口飯 要不擇手段 玩不動商業"
                        "\n你王八蛋 撿現成多自然 全都我害"
                        "\n娶了兒時的玩伴 現在被商人拿去賣"
                        "\n"
                        "\n他們要什麼 他要我一生的摯愛 "
                        "\n你要它幹什麼 因為年輕人會愛"
                        "\n一本正經的說幹 我頭腦還沒有啪袋"
                        "\n把錢都移回我口袋 這便宜沒人能夠佔"
                        "\n"
                        "\n08現在大了 不打關係"
                        "\n沒文化的商人 賺錢生意"
                        "\n搞文化的素人 只賺生計"
                        "\n告訴妻子我話事了 不用藏妳聲音"
                        "\n"
                        "\n家庭和樂 狀態不停攀升"
                        "\n為愛作戰 不會選擇單身"
                        "\nSkr不是一個詞you stupid motherfuckers"
                        "\nWhen I pull up "
                        "\nSkr skr motherfuckers"
                        "\n"
                        "\n我吞下這口飯菜不像家裡"
                        "\n他們沒有理由應該愛你"
                        "\n特別著迷我的千萬數據"
                        "\n假裝呵護像是寶貝女婿"
                        "\n一不注意我已習慣每天扮著白臉"
                        "\nWho the fuck do you think I am bitch "
                        "\nI’m the motherfucker come from nothing"
                        "\n你怎麼覺得我會差小你"
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


class earthSongpage11 extends StatefulWidget {
  const earthSongpage11({Key? key}) : super(key: key);

  @override
  State<earthSongpage11> createState() => _earthSongpage11State();
}

class _earthSongpage11State extends State<earthSongpage11> {
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
                      await player.play(AssetSource('earthS11.mp3'));
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
                  child: Image(image: AssetImage("image/earth11.jpg"),),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child:
                  ExpandableText(
                    "【Amazing】", style: TextStyle(color: Colors.white,fontFamily: "Oswald",fontSize: 25,height: 2),
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
                    "\n詞：瘦子E.SO"
                        "\n曲：瘦子E.SO、Raymond Myles、A-FLIGHT 崔欽翔"
                        "\n製作人：A-FLIGHT 崔欽翔"
                        "\n編曲：A-FLIGHT 崔欽翔"
                        "\n和聲編寫：P.i.N范品頤/靛藍音程工作室"
                        "\n和聲：P.i.N范品頤"
                        "\n錄音師：A-FLIGHT 崔欽翔"
                        "\n錄音工作室：本色錄音室 True Color Studio"
                        "\n混音師：林清智 Zachary Lin "
                        "\n混音工作室：全區通行錄音室 All Access Studio"
                        "\n"
                        "\n《Amazing》一起用讚美愛著這地球  強大氣場的饒舌贊歌"
                        "\n在從歷史深度與地球廣度交織的各種面向探討人類與這顆星球的關係後，在專輯的最後一首歌曲《Amazing》裡，瘦子帶著對全人類崇高的愛與感動，包容了整張專輯的概念與講述的議題，帶領聽眾了解一切的不美好，最終也將成為了最美好的一部分。瘦子與兩位製作人小崔和 Tipsy 一同攜手，將黑人福音歌曲中，渾厚、充滿情感的合聲做為音樂元素基底，與瘦子堅定而充滿信念的聲線交錯呼應。歌詞中對於相愛、相擁、相信的意念展現的極具力量，是一首完整呈現瘦子成熟的音樂創作能量的驚人作品。"
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
                    "\n你總是一身宿醉的醒來"
                        "\n他們想把你推上死刑台"
                        "\n有多久沒有面對那毒害"
                        "\n對著鏡子說 You’re fucking amazing"
                        "\nYou fucking made it"
                        "\nfucking made it"
                        "\nfucking made it"
                        "\n難道我們不能讚美彼此的榮耀"
                        "\n"
                        "\n抬頭看著煙火我只有聞到火藥"
                        "\n那就一起脫掉吧仁慈的面罩"
                        "\n歡聲雷動之中等待那暗號"
                        "\n"
                        "\n"
                        "\n你老子我正在活在未來"
                        "\n還不只有這點能耐"
                        "\nBrother wish you have a good life "
                        "\n不需要害怕 你不活在他們認為"
                        "\n不停將我摧毀"
                        "\n直到有天發現要為堅持賠罪"
                        "\n我跨了紅線後才知道歸回"
                        "\n我跟你們不是一掛拜託請把我退隊"
                        "\n"
                        "\n你總是一身宿醉的醒來"
                        "\n他們想把你推上死刑台"
                        "\n有多久沒有面對那毒害"
                        "\n對著鏡子說 You’re fucking amazing"
                        "\nYou fucking made it"
                        "\nfucking made it"
                        "\nfucking made it"
                        "\n難道我們不能讚美彼此的榮耀"
                        "\n"
                        "\nI love it when you smile能對抗所有"
                        "\n幹嘛要相同如果能夠與眾不同"
                        "\nYou fucking made it"
                        "\nfucking made it"
                        "\nfucking made it"
                        "\n難道我們不能讚美彼此的榮耀"
                        "\n"
                        "\nBottoms up we praise the life"
                        "\nBottoms up we praise the life"
                        "\nBottoms up we praise the life"
                        "\nBottoms up we praise the life"
                        "\n"
                        "\n"
                        "\n花一輩子時間證明他們錯"
                        "\n這麼多年我依然還是在挺著胸"
                        "\nThrow your signs up 記得你不寂寞"
                        "\nMy people roll up 我還沒玩夠"
                        "\n"
                        "\n我問你要如何詮釋老天爺的創作"
                        "\n別讓那些混蛋告訴你該怎麼做"
                        "\n他們否定因為自己曾經失敗過"
                        "\n我跟你不同這個天才你沒見識過"
                        "\n"
                        "\n你老子我正在活在未來"
                        "\n還不只有這點能耐"
                        "\nBrother, wish you have a good life "
                        "\nBottoms up we praise this life"
                        "\nBottoms up we praise this life"
                        "\n"
                        "\n你老子我正在活在未來"
                        "\n還不只有這點能耐"
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