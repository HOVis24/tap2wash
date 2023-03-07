import 'package:flutter/material.dart';
import 'package:tap2wash/pages/carwash_feedback.dart';
import 'package:tap2wash/pages/carwash_profile.dart';
import 'package:tap2wash/pages/edit_profile.dart';
import 'package:tap2wash/main.dart';

import '../components/sidebar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tap2Wash',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tap2Wash'),
    );
  }
}

class myWashers extends StatefulWidget {
  const myWashers({super.key, required this.title});

  final String title;

  @override
  State<myWashers> createState() => _myWashers();
}

class _myWashers extends State<myWashers> {
  late MediaQueryData queryData;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          backgroundColor: const Color.fromRGBO(49, 185, 228, 1),
          toolbarHeight: 70,
          title: Text('My Washers'),
          centerTitle: true,
          titleTextStyle: const TextTheme(
            headline6: TextStyle(
              // headline6 is used for setting title's theme
              color: Colors.white,
              fontSize: 36,
              fontFamily: 'Palanquin',
              fontWeight: FontWeight.w600,
            ),
          ).headline6,
        ),
        drawer: Drawer(
          child: SideBar(),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              width: queryData.size.width,
              height: queryData.size.height,
              decoration: const BoxDecoration(color: Colors.white),
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    print("Tapped Go Back");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const carwashProfile(
                          title: 'Tap2Wash',
                        )));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      side: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    color: Colors.white,
                    child: SizedBox(
                        width: queryData.size.width,
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.person_pin, size: 50),
                            SizedBox(
                              width: 200,
                              child: Text(
                                'Juan Dela Cruz',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Palanquin',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Tapped Go Back");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const carwashProfile(
                          title: 'Tap2Wash',
                        )));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      side: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    color: Colors.white,
                    child: SizedBox(
                        width: queryData.size.width,
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.person_pin, size: 50),
                            SizedBox(
                              width: 200,
                              child: Text(
                                'Juan Dela Cruz',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Palanquin',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Tapped Go Back");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const carwashProfile(
                          title: 'Tap2Wash',
                        )));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      side: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    color: Colors.white,
                    child: SizedBox(
                        width: queryData.size.width,
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.person_pin, size: 50),
                            SizedBox(
                              width: 200,
                              child: Text(
                                'Juan Dela Cruz',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Palanquin',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Tapped Go Back");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MyHomePage(
                              title: 'Tap2Wash',
                            )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: const Color.fromRGBO(74, 83, 151, 1),
                        child: SizedBox(
                            width: 160,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(
                                  Icons.keyboard_return_rounded,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text(
                                  ' GO BACK',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 15),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
