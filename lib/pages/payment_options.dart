import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/pages/pick_service.dart';
import 'package:tap2wash/pages/user_profile.dart';

import '../components/home_payment_options.dart';
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

class paymentOptions extends StatefulWidget {
  const paymentOptions({super.key, required this.title});

  final String title;

  @override
  State<paymentOptions> createState() => _paymentOptions();
}

class _paymentOptions extends State<paymentOptions> {
  late MediaQueryData queryData;

  //This is for the service buttons!
  int selectedIndex = 0;

  //This is for the BottomNavBar routes!
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    List<Widget> list = [
      const HomePaymentOptions(
        option: 'Main Option',
        title: 'Gcash',
        icon: Icon(Icons.camera_sharp, size: 50),
        accName: 'Juan F. Dela Cruz',
        accNum: '+639227392730',
        primary: true,
      ),
      const HomePaymentOptions(
        option: 'Second Option',
        title: 'UnionBank',
        icon: Icon(Icons.house_rounded, size: 50),
        accName: 'Juan F. Dela Cruz',
        accNum: '6578-XXXX-XXX',
        primary: false,
      ),
      const HomePaymentOptions(
        option: 'Third Option',
        title: 'Cash',
        icon: Icon(Icons.account_balance_wallet_rounded, size: 50),
        accName: 'Juan F. Dela Cruz',
        accNum: '+639227392730',
        primary: false,
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
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.payment,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Payment Options',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Palanquin',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 26),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Wrap(children: list),
              ],
            ),
          ],
        ));
  }
}
