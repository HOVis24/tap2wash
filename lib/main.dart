import 'package:flutter/material.dart';
import 'package:tap2wash/pick_car.dart';

import 'components/home_service_button.dart';
import 'components/sidebar.dart';

void main() {
  runApp(const MyApp());
}

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late MediaQueryData queryData;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    List<Widget> list = [
      HomeServiceButton(
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
          },
          selected: selectedIndex == 0,
          icon: Icon(Icons.local_car_wash_rounded),
          title: 'Full Wash',
          summary: 'Lorem IO'),
      HomeServiceButton(
          onTap: () {
            setState(() {
              selectedIndex = 1;
            });
          },
          selected: selectedIndex == 1,
          icon: Icon(Icons.wash_rounded),
          title: 'Light Wash',
          summary: 'Lorem IO'),
      HomeServiceButton(
          onTap: () {
            setState(() {
              selectedIndex = 2;
            });
          },
          selected: selectedIndex == 2,
          icon: Icon(Icons.cleaning_services_rounded),
          title: 'Interior Cleaning',
          summary: 'Lorem IO'),
      HomeServiceButton(
          onTap: () {
            setState(() {
              selectedIndex = 3;
            });
          },
          selected: selectedIndex == 3,
          icon: Icon(Icons.tire_repair_rounded),
          title: 'Tire Maintenance',
          summary: 'Lorem IO'),
    ];
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: const Color.fromRGBO(49, 185, 228, 1),
        toolbarHeight: 70,
        title: Text(widget.title),
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
                  const SizedBox(height: 10),
                  const Text(
                    'What can we do for you today?',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(49, 185, 228, 1),
                        fontSize: 25),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      child: const Text(
                        'Pick a service:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Palanquin',
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(49, 185, 228, 1),
                            fontSize: 30),
                      ),
                    ),
                  ),
                  Wrap(
                    children: list,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("Tapped Next");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const pickCar(
                                title: 'Tap2Wash',
                              )));
                        },
                        child: Card(
                          margin: const EdgeInsets.only(right: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: const Color.fromRGBO(49, 185, 228, 1),
                          child: SizedBox(
                              width: 100,
                              height: 40,
                              child: Row(
                                children: const <Widget>[
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.play_arrow_sharp,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'NEXT',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Palanquin',
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                ],
                              )),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Recent Bookings',
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
                              'Date & Time: 2/15/2023 @ 1:00 PM',
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
                                'Location: 2010 Piy Margal St., Sampaloc, Manila',
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
                                      'Service: Full Wash',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'Palanquin',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      'Car: SUV',
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
                                      'Payment: UnionBank',
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
                ],
              ),
            ],
          ),
        ],
      )
    );
  }
}
