import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/pages/booking_details.dart';
import 'package:tap2wash/pages/pick_service.dart';
import 'package:tap2wash/pages/user_profile.dart';

import '../app_state_model.dart';
import '../components/home_booking_confirmation.dart';
import '../components/sidebar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/second',
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

class bookingConfirmation extends StatefulWidget {
  const bookingConfirmation({super.key, required this.title});

  final String title;

  @override
  State<bookingConfirmation> createState() => _bookingConfirmation();
}

class _bookingConfirmation extends State<bookingConfirmation> {
  late MediaQueryData queryData;

  //This is for the service buttons!
  int selectedIndex = 0;

  //This is for the BottomNavBar routes!
  int _selectedIndex = 1;

  @override
  void initState() {
    super.initState();
    var model = Provider.of<AppStateModel>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    return Consumer<AppStateModel>(builder: (context, model, child) {
      List<Widget> list = [
        HomeBookingConfirmation(
          selected: selectedIndex == 0,
          service: model.service,
          car: model.car,
          address: model.address,
          date: model.date,
          time: model.time,
          payment: model.payment,
        ),
      ];

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
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 5, bottom: 5),
                      child: GestureDetector(
                          child: SvgPicture.asset(
                            'assets/images/back_btn.svg',
                          ),
                          onTap: () => Navigator.pop(context)),
                    ),
                  ),
                  LinearPercentIndicator(
                    width: queryData.size.width,
                    lineHeight: 5.0,
                    percent: 0.90,
                    backgroundColor: Colors.grey,
                    progressColor: Color.fromRGBO(49, 185, 228, 1),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 30, bottom: 15),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: SvgPicture.asset(
                          'assets/images/review_icon.svg',
                        )),
                  ),
                  Wrap(children: list),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: () {
                          print("Tapped Next");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BookingDetails(
                                    title: 'Tap2Wash',
                                  )));
                        },
                        child: Card(
                          color: const Color.fromRGBO(236, 250, 255, 1),
                          child: SizedBox(
                              width: 180,
                              height: 45,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Text(
                                    'Confirm',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Palanquin',
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(49, 185, 228, 1),
                                        fontSize: 20),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ));
    });
  }
}
