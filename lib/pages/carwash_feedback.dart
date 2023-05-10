import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tap2wash/main.dart';
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

class carwashFeedback extends StatefulWidget {
  const carwashFeedback({super.key, required this.title});

  final String title;

  @override
  State<carwashFeedback> createState() => _carwashFeedback();
}

class _carwashFeedback extends State<carwashFeedback> {
  late MediaQueryData queryData;
  int selectedIndex = 0;
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
    int _selectedIndex = 2;

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
      body: Stack(
        children: <Widget>[
          Container(
            width: queryData.size.width,
            height: queryData.size.height,
            decoration: const BoxDecoration(color: Colors.white),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 20),
              const Text(
                'Booking Details',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Palanquin',
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(49, 185, 228, 1),
                    fontSize: 25),
              ),
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
                    width: 370,
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Date & Time: 2/19/2023 @ 5:00 PM',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Palanquin',
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 12),
                        ),
                        Flexible(
                          child: Text(
                            'Location: Mezza II Residences, Guirayan Street, Quezon City',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 12),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Service: Lightwash',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 12),
                                ),
                                Text(
                                  'Car: Sedan',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            Column(
                              children: [
                                Text(
                                  'Status: Done',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 12),
                                ),
                                Text(
                                  'Payment: Cash',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 12),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              const Text(
                'Rate Your Experience',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Palanquin',
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(49, 185, 228, 1),
                    fontSize: 25),
              ),
              RatingBarIndicator(
                rating: 4.5,
                itemCount: 5,
                itemSize: 30.0,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(
                width: 300,
                child: Flexible(
                  child: Text(
                    'This will help us determine if the service(s) offered is up to our standards. Any feedback will be kept anonymous.',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 12),
                  ),
                ),
              ),
              const Text(
                'Write A Comment',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Palanquin',
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(49, 185, 228, 1),
                    fontSize: 25),
              ),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    width: 350,
                    child: TextField(
                      minLines: 3,
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10),
                    child: GestureDetector(
                      onTap: () {
                        print("Tapped Confirm");
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
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      )
    );


  }
}
