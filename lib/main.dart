import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:tap2wash/components/user_ongoing_orders.dart';
import 'package:tap2wash/pages/booking_history.dart';
import 'package:tap2wash/pages/payment_failed.dart';
import 'package:tap2wash/pages/payment_pending.dart';
import 'package:tap2wash/pages/pick_service.dart';
import 'package:tap2wash/pages/user_profile.dart';

import 'app_state_model.dart';
import 'components/sidebar.dart';

void main() {
  runApp(ChangeNotifierProvider<AppStateModel>(
      create: (_) => AppStateModel()..initialize(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/first': (context) => MyHomePage(title: 'Tap2Wash'),
        '/second': (context) => pickService(title: 'Tap2Wash'),
        '/third': (context) => userProfile(title: 'Tap2Wash'),
      },
      title: 'Tap2Wash',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tap2Wash'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late MediaQueryData queryData;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    var model = Provider.of<AppStateModel>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Consumer<AppStateModel>(builder: (context, model, child) {
      List<Widget> ongoingorders = [
        OnGoingOrders(
            date: '3/7/2023',
            time: '4:00 PM',
            location: '2010 Piy Margal St., Sampaloc, Manila',
            service: 'Full Wash',
            car: 'SUV',
            status: 'Ongoing',
            payment: 'GCash'),
        OnGoingOrders(
            date: '3/4/2023',
            time: '3:00 PM',
            location: 'Mezza II Residences, Guirayan St., Quezon City',
            service: 'Light Wash',
            car: 'SUV',
            status: 'Ongoing',
            payment: 'GCash'),
        OnGoingOrders(
            date: '3/7/2023',
            time: '4:00 PM',
            location: '2010 Piy Margal St., Sampaloc, Manila',
            service: 'Full Wash',
            car: 'SUV',
            status: 'Ongoing',
            payment: 'GCash'),
      ];
      return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/images/home_btn.svg'),
                  label: 'Home'),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/book_service_btn.svg'),
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
          drawer: Drawer(child: SideBar()),
          body: ListView(
            children: [
              Stack(
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
                        child: Container(
                          margin: const EdgeInsets.only(left: 20, top: 10),
                          child: const Text(
                            'Good Day, Juan',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(49, 185, 228, 1),
                                fontSize: 36),
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/homepage_pic.png',
                        scale: 1.2,
                      ),
                      GestureDetector(
                        onTap: () {
                          print("Tapped Booking History");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const paymentPending(
                                title: 'Tap2Wash',
                              )));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                'Booking History',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Palanquin',
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(49, 185, 228, 1),
                                    fontSize: 25),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5, right: 25),
                              child: Text(
                                '>',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Palanquin',
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(49, 185, 228, 1),
                                    fontSize: 40),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Wrap(
                        runSpacing: 10,
                        children: ongoingorders,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ));
    });
  }
}
