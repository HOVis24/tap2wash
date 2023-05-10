import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/pages/payment_options.dart';
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

class editPayment extends StatefulWidget {
  const editPayment({super.key, required this.title});

  final String title;

  @override
  State<editPayment> createState() => _editPayment();
}

class _editPayment extends State<editPayment> {
  late MediaQueryData queryData;
  //This is for the service buttons!
  int selectedIndex = 0;
  //This is for the BottomNavBar routes!
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: const Text(
                      'EDIT INFORMATION',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Palanquin',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 25),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  child: SizedBox(
                      width: 350,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.camera, size: 50),
                              SizedBox(),
                              Column(
                                children: const [
                                  Text(
                                    'GCash',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Palanquin',
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    'Juan F. Dela Cruz',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Palanquin',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    '+639227392730',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Palanquin',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  child: SizedBox(
                      width: 350,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              Text(
                                'BANK',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Palanquin',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Bank Name',
                                  hintStyle: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                              ),
                              Text(
                                'FULL NAME',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Palanquin',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Account Name',
                                  hintStyle: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                              ),
                              Text(
                                'ACCOUNT NUMBER',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Palanquin',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Account Number',
                                  hintStyle: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Tapped Next");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const paymentOptions(
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
                    GestureDetector(
                      onTap: () {
                        print("Tapped Next");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const paymentOptions(
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
                                  'CONFIRM',
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
                    )
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
