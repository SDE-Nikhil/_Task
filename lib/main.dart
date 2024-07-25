import 'dart:ffi';

import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.outfit().fontFamily,
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
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
      // appBar: AppBar(
      //   // TRY THIS: Try changing the color here to a specific color (to
      //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
      //   // change color while the other colors stay the same.
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.white,
          Color(0xFFFf9e4cc),
          Color(0xFFFf9e4cc),
        ])),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Animator(
                    triggerOnInit: true,
                    curve: Curves.bounceIn,
                    duration: const Duration(milliseconds: 500),
                    tween: Tween<double>(begin: -1, end: 0),
                    builder: (context, state, child) {
                      return FractionalTranslation(
                        translation: Offset(state.value, 0),
                        child: child,
                      );
                    },
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 0),
                      onPressed: () {},
                      icon: const Icon(
                          // <-- Icon
                          Icons.location_on,
                          size: 24.0,
                          color: Color(0xfffa99a84)),
                      label: const Text(
                        'Saint Petersburg',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color(0xfffa99a84)),
                      ), // <-- Text
                    ),
                  ),
                  Spacer(),
                  Animator(
                      triggerOnInit: true,
                      curve: Curves.bounceIn,
                      duration: const Duration(milliseconds: 500),
                      tween: Tween<double>(begin: 1, end: 0),
                      builder: (context, state, child) {
                        return FractionalTranslation(
                          translation: Offset(state.value, 0),
                          child: child,
                        );
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Icon(Icons.person_2_outlined),
                      )),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Animator(
                      triggerOnInit: true,
                      curve: Curves.bounceIn,
                      duration: const Duration(milliseconds: 500),
                      tween: Tween<double>(begin: -1, end: 0),
                      builder: (context, state, child) {
                        return FractionalTranslation(
                          translation: Offset(state.value, 0),
                          child: child,
                        );
                      },
                      child: const Text(
                        "Hi, Marina",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Animator(
                      triggerOnInit: true,
                      curve: Curves.bounceIn,
                      duration: Duration(milliseconds: 500),
                      tween: Tween<double>(begin: 1, end: 0),
                      builder: (context, state, child) {
                        return FractionalTranslation(
                          translation: Offset(state.value, 0),
                          child: child,
                        );
                      },
                      child: const Text(
                        "Let's select your\nperfect place",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.orange,
                      // Color(0xfffc9e12),
                      maxRadius: 85,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "BUY",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Spacer(),
                          Text("1 034",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                          Text(
                            "offers",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 150,
                      width: 180,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color(0xffffefaf6),
                          borderRadius: BorderRadius.circular(30),
                          border: const Border()),
                      child: const Column(
                        children: [
                          //#b6a996
                          Text(
                            "RENT",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Color(0xfffa99a84)),
                          ),
                          Spacer(),
                          Text(
                            "2 212",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfffa99a84)),
                          ),
                          Text(
                            "offers",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Color(0xfffa99a84)),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 10),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(60),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 00,
                                          offset: Offset(0, 0),
                                          color:
                                              Color.fromRGBO(255, 95, 27, .3))
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Stack(children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                    "https://hips.hearstapps.com/hmg-prod/images/hbx110123cortneybishop-009-6638f5a4a7c67.jpg?crop=1xw:0.84375xh;center,top&resize=1200:*")),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)),
                                            // color: Colors.amber,
                                          ),
                                          height: 200,
                                          width: double.infinity,
                                        ),
                                        Positioned(
                                            bottom: 10,
                                            right: 55,
                                            child: Container(
                                              height: 40,
                                              width: MediaQuery.sizeOf(context)
                                                      .width /
                                                  1.5,
                                              decoration: const BoxDecoration(
                                                color: Color(0xffffd9d3cc),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                              ),
                                              child: Animator(
                                                triggerOnInit: true,
                                                curve: Curves.bounceIn,
                                                duration: const Duration(
                                                    milliseconds: 500),
                                                tween: Tween<double>(
                                                    begin: -1, end: 0),
                                                builder:
                                                    (context, state, child) {
                                                  return FractionalTranslation(
                                                    translation:
                                                        Offset(state.value, 0),
                                                    child: child,
                                                  );
                                                },
                                                child: const Row(
                                                  children: [
                                                    Spacer(),
                                                    Text(
                                                      "Gladkova St,25",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Colors.black),
                                                    ),
                                                    Spacer(),
                                                    CircleAvatar(
                                                      backgroundColor:
                                                          Colors.white,
                                                      child: Icon(
                                                        Icons.arrow_forward_ios,
                                                        size: 14,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ))
                                      ]),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Stack(
                                            children: [
                                              Container(
                                                clipBehavior: Clip.hardEdge,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: NetworkImage(
                                                          "https://hips.hearstapps.com/hmg-prod/images/hbx110123cortneybishop-009-6638f5a4a7c67.jpg?crop=1xw:0.84375xh;center,top&resize=1200:*")),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30)),
                                                  // color: Colors.amber,
                                                ),
                                                height: 200,
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width /
                                                        2.2,
                                              ),
                                              Positioned(
                                                  bottom: 10,
                                                  right: 20,
                                                  child: Container(
                                                    height: 40,
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width /
                                                        2.7,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color:
                                                          Color(0xffffd9d3cc),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  30)),
                                                    ),
                                                    child: const Row(
                                                      children: [
                                                        Spacer(),
                                                        Text(
                                                          "Trefoleva,25",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                        Spacer(),
                                                        CircleAvatar(
                                                          backgroundColor:
                                                              Colors.white,
                                                          child: Icon(
                                                            Icons
                                                                .arrow_forward_ios,
                                                            size: 14,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ))
                                            ],
                                          ),
                                          Spacer(),
                                          Stack(
                                            children: [
                                              Container(
                                                clipBehavior: Clip.hardEdge,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: NetworkImage(
                                                          "https://hips.hearstapps.com/hmg-prod/images/hbx110123cortneybishop-009-6638f5a4a7c67.jpg?crop=1xw:0.84375xh;center,top&resize=1200:*")),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30)),
                                                  // color: Colors.amber,
                                                ),
                                                height: 200,
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width /
                                                        2.2,
                                              ),
                                              Positioned(
                                                  bottom: 10,
                                                  right: 20,
                                                  child: Container(
                                                    height: 40,
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width /
                                                        2.7,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color:
                                                          Color(0xffffd9d3cc),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  30)),
                                                    ),
                                                    child: const Row(
                                                      children: [
                                                        Spacer(),
                                                        Text(
                                                          "Trefoleva,25",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                        Spacer(),
                                                        CircleAvatar(
                                                          backgroundColor:
                                                              Colors.white,
                                                          child: Icon(
                                                            Icons
                                                                .arrow_forward_ios,
                                                            size: 14,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              )
                            ],
                          ),
                        ),
                      )))
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: 280,
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.chat, color: Colors.white),
            Icon(Icons.comment, color: Colors.white),
            CircleAvatar(
              child: Icon(Icons.home, color: Colors.white),
              backgroundColor: Colors.orange,
            ),
            Icon(Icons.favorite, color: Colors.white),
            Icon(
              Icons.person,
              color: Colors.white,
            ),
          ],
        ),
      ),

      //  FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child:
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
