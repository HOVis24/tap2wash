import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/pages/edit_profile.dart';
import 'package:tap2wash/pages/pick_service.dart';
import 'package:tap2wash/pages/user_intro.dart';
import 'package:tap2wash/pages/user_settings.dart';

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

class userProfile extends StatefulWidget {
  const userProfile({super.key, required this.title});

  final String title;

  @override
  State<userProfile> createState() => _userProfile();
}

class _userProfile extends State<userProfile> {
  late MediaQueryData queryData;
  //This is for the service buttons!
  int selectedIndex = 0;
  //This is for the BottomNavBar routes!
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
              children: [
                GestureDetector(
                  onTap: () {
                    print("Tapped Back");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MyHomePage(
                          title: 'Tap2Wash',
                        )));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 50.0, left: 15),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.arrow_back_ios_new_sharp,
                          size: 35,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.account_circle, size: 100),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const editProfile(
                                  title: 'Tap2Wash',
                                )));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SvgPicture.asset('assets/images/edit_btn.svg'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const userSettings(
                                  title: 'Tap2Wash',
                                )));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SvgPicture.asset(
                                'assets/images/settings_btn.svg'),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: queryData.size.width / 5,
                          child: const Text(
                            'Name',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(49, 185, 228, 1),
                                fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          width: queryData.size.width / 1.4,
                          child: const Text(
                            'Juan F. Dela Cruz',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: queryData.size.width / 5,
                          child: const Text(
                            'Gender',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(49, 185, 228, 1),
                                fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          width: queryData.size.width / 1.4,
                          child: const Text(
                            'Male',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: queryData.size.width / 5,
                          child: const Text(
                            'Nickname',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(49, 185, 228, 1),
                                fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          width: queryData.size.width / 1.4,
                          child: const Text(
                            'Juan',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: queryData.size.width / 5,
                          child: const Text(
                            'Address',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(49, 185, 228, 1),
                                fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          width: queryData.size.width / 1.4,
                          child: const Text(
                            '1146 Centro Street, Sampaloc, Manila',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
