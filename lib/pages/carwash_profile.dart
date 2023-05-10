import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/pages/carwash_feedback.dart';
import 'package:tap2wash/pages/my_washers.dart';
import 'package:tap2wash/pages/pick_service.dart';
import 'package:tap2wash/pages/user_profile.dart';

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

class carwashProfile extends StatefulWidget {
  const carwashProfile({super.key, required this.title});

  final String title;

  @override
  State<carwashProfile> createState() => _carwashProfile();
}

class _carwashProfile extends State<carwashProfile> {
  late MediaQueryData queryData;
  int selectedIndex = 0;
  int _selectedIndex = 2;
  late final _ratingController;
  late double _rating;

  double _userRating = 3.0;
  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  bool _isRTLMode = false;
  bool _isVertical = false;
  IconData? _selectedIcon;

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
      body: Stack(
        children: <Widget>[
          Container(
            width: queryData.size.width,
            height: queryData.size.height,
            decoration: const BoxDecoration(color: Colors.white),
          ),
          Column(
            children: <Widget>[
              const SizedBox(height: 10),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: const BorderSide(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                color: Colors.white,
                child: SizedBox(
                    width: 350,
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const Icon(Icons.circle, size: 100),
                        const Text(
                          'Juan F. Dela Cruz',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Palanquin',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 25),
                        ),
                        const Flexible(
                          child: Text(
                            'Quezon City',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 15),
                          ),
                        ),
                        RatingBarIndicator(
                          rating: 4.5,
                          itemCount: 5,
                          itemSize: 30.0,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0, top: 10),
                    child: GestureDetector(
                      onTap: () {
                        print("Tapped Back");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const myWashers(
                              title: 'Tap2Wash',
                            )));
                      },
                      child: Card(
                        color: const Color.fromRGBO(236, 250, 255, 1),
                        child: SizedBox(
                            width: 130,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10),
                    child: GestureDetector(
                      onTap: () {
                        print("Tapped Rate Washer");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const carwashFeedback(
                              title: 'Tap2Wash',
                            )));
                      },
                      child: Card(
                        color: const Color.fromRGBO(236, 250, 255, 1),
                        child: SizedBox(
                            width: 130,
                            height: 45,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Text(
                                  'RATE WASHER',
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
      ),

    );
  }
}
