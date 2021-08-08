import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        primaryColorBrightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/twt.png',width: 40.0,height: 40.0,),
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/FB_IMG_1545508174436.jpg'),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.blue,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black45,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.black45,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.mail_outline,color: Colors.black45,)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            tweets(),
            const Divider(
                height: 20,
                thickness: 1
            ),
            tweets(),
            const Divider(
                height: 20,
                thickness: 1
            ),
            tweets(),
            const Divider(
                height: 20,
                thickness: 1
            ),
            tweets(),
            const Divider(
                height: 20,
                thickness: 1
            ),
            tweets(),
            const Divider(
                height: 20,
                thickness: 1
            ),
          ],

        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget tweets(){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      tweetAvatar(),
      tweetBody(),

    ],
  );
}
Widget tweetAvatar(){
  return Container(
    margin: const EdgeInsets.all(10.0),
    child: CircleAvatar(
      backgroundImage: AssetImage('assets/FB_IMG_1545508174436.jpg'),
    ),
  );
}

Widget tweetBody(){
  return Expanded(
    child: Column(
      children: [
        tweetheader(),
        tweetText(),
        SizedBox(height: 20.0,),
        tweetButtons(),

      ],
    ),
  );
}

Widget tweetheader(){
  return Row(
    children: [
      Container(
        margin: const EdgeInsets.only(right: 5.0),
        child: Text(
          "Abiansh Pradhan",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      Text(
        "@Pradhan . 5m",
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      Spacer(),
      IconButton(onPressed: (){}, icon: Icon(
        Icons.more_horiz,
      ))
    ],
  );
}

Widget tweetText(){
  return Container(
    child: Text("Totally endorse it is extra ordinary humble and nice.."),
  );

}

Widget tweetButtons(){
  return Container(
    padding: const EdgeInsets.all(5.0),
    child: Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        tweetButtonIcons(FontAwesomeIcons.comment, Text("124")),
        tweetButtonIcons(FontAwesomeIcons.retweet, Text("124")),
        tweetButtonIcons(FontAwesomeIcons.heart, Text("124")),
        tweetButtonIcons(FontAwesomeIcons.share,Text("124")),
        // Icon(FontAwesomeIcons.comment,size: 15.0,),
        // Text("127"),
        // Icon(FontAwesomeIcons.retweet,size: 15.0,),
        // Icon(FontAwesomeIcons.heart,size: 15.0,),
        // Icon(FontAwesomeIcons.share,size: 15.0,),

      ],
    ),
  );
}

Widget tweetButtonIcons(IconData icon,Text text){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(icon,size: 15.0,),
      SizedBox(width: 2.0,),
      Container(
        child: text,
      ),
    ],
  );
}