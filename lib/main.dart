import 'package:flutter/material.dart';
import"package:hovering/hovering.dart";
void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String font = 'HarryPotter';
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset('assets/HogwartsOnFire.jpg',
                fit: BoxFit.contain,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/NavBarLogo.png',
                      height: 60  ,
                      fit: BoxFit.contain,
                    ),
                    // Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: 8.0),
                    //   child: GestureDetector(
                    //     child: Text(
                    //       'Logo',
                    //       style: TextStyle(color: Colors.white,fontFamily: MyApp.font,fontSize: 20),
                    //     ),
                    //   ),
                    // ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: GestureDetector(
                        child: Text(
                          'home',
                          style: TextStyle(color: Colors.white,fontFamily: MyApp.font,fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: GestureDetector(
                        child: Text(
                          'Courses',
                          style: TextStyle(color: Colors.white,fontFamily: 'HarryPotter',fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: GestureDetector(
                        child: Text(
                          'Houses',
                          style: TextStyle(color: Colors.white,fontFamily: MyApp.font,fontSize: 20),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                      },
                      child: Text(
                        'login',
                        style: TextStyle(color: Colors.white,fontFamily: MyApp.font,fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Image.asset('assets/HogwartsDining.jpg',
                fit: BoxFit.contain,
              ),
              Positioned(
                top: 400,
                left: 200,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(38.0),
                      child: Image.asset('assets/Griffindor.png',
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(38.0),
                      child: Image.asset('assets/Ravenclaw.png',
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(38.0),
                      child: Image.asset('assets/Huffelpuff.png',
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(38.0),
                      child: Image.asset('assets/MafloyHouseEWW.png',
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Stack(
            children: [
              Image.asset('assets/CoursesBg.jpg'),
              Positioned(
                top: 70,
                left: 50,
                child: Column(
                  children: [
                    Text('1st Year',
                      style: TextStyle(fontSize: 45,fontFamily: MyApp.font,color: Colors.white),
                    ),
                    SizedBox(
                      height: 400,
                    ),
                    Text('2nd Year',
                      style: TextStyle(fontSize: 45,fontFamily: MyApp.font,color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
          Stack(
            children: [
              Image.asset('assets/FooterBg.jpg'),
              Positioned(
                top: 400,
                left: 200,
                child: Column(
                  children: [
                    Image.asset('assets/LineBreak.png'),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/Discord.png',
                            height: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/facebook.png',
                            height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/instagram.png',
                            height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/youtube.png',
                            height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/twitterX.png',
                            height: 20,),
                        ),
                      ],
                    ),
                    Image.asset('assets/Line Break-Inverted.png'),
                  ],
              ),),
            ],
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
