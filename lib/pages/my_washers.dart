import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/pages/carwash_profile.dart';
import 'package:tap2wash/pages/pick_service.dart';
import 'package:tap2wash/pages/user_profile.dart';

import '../components/sidebar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/third',
      routes: {
        '/first': (context) => const MyHomePage(title: 'Tap2Wash'),
        '/second': (context) => const pickService(title: 'Tap2Wash'),
        '/third': (context) => const userProfile(title: 'Tap2Wash'),
      },
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
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/home_btn.svg'),
                label: 'Home'),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/book_service_btn.svg',
              ),
              label: 'Book a Service',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/profile_btn.svg'),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, "/first");
                break;
              case 1:
                Navigator.pushNamed(context, "/second");
                break;
              case 2:
                Navigator.pushNamed(context, "/third");
                break;
            }
          },
        ),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(224, 251, 252, 1),
          toolbarHeight: 80,
          title: Image.asset(
            'assets/images/tap2wash_logo_2.png',
            scale: 1.3,
          ),
          centerTitle: true,
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

                const Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(
                    'Past Washers',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(49, 185, 228, 1),
                        fontSize: 30),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Tapped Washer");
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
                          children: const <Widget>[
                            Icon(Icons.circle, size: 50),
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
                    print("Tapped Washer");
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
                          children: const <Widget>[
                            Icon(Icons.circle, size: 50),
                            SizedBox(
                              width: 200,
                              child: Text(
                                'Bartholomew Sinigang',
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
                    print("Tapped Washer");
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
                          children: const <Widget>[
                            Icon(Icons.circle, size: 50),
                            SizedBox(
                              width: 200,
                              child: Text(
                                'Jim John Jamison Jr.',
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
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0, top: 10),
                      child: GestureDetector(
                        onTap: () {
                          print("Tapped Next");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const MyHomePage(
                                title: 'Tap2Wash',
                              )));
                        },
                        child: Card(
                          color: const Color.fromRGBO(236, 250, 255, 1),
                          child: SizedBox(
                              width: 100,
                              height: 45,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Text(
                                    'GO BACK',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Palanquin',
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(49, 185, 228, 1),
                                        fontSize: 16),
                                  ),
                                ],
                              )),
                        ),
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
