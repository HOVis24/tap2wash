import 'package:flutter/material.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/payment_pending.dart';

import 'components/sidebar.dart';

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

class bookingDetails extends StatefulWidget {
  const bookingDetails({super.key, required this.title});

  final String title;

  @override
  State<bookingDetails> createState() => _bookingDetails();
}

class _bookingDetails extends State<bookingDetails> {
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
        drawer: Drawer(
          child: SideBar(),
        ),
        body:
        ListView(
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
                    const SizedBox(height: 20),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: const BorderSide(
                          color: Colors.black,
                          width: 0.5,
                        ),
                      ),
                      color: Colors.white,
                      child: Container(
                          width: 450,
                          height: 400,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'BOOKING ID: ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Palanquin',
                                        color: Colors.black,
                                        fontSize: 35),
                                  ),
                                  Text(
                                    '243529',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Palanquin',
                                        color: Color.fromRGBO(49, 185, 228, 1),
                                        fontSize: 35),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.hourglass_empty_rounded, size: 50),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Payment Pending',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'Palanquin',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet ipsum dolor sit amet ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'Palanquin',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.calendar_month_rounded, size: 50),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Scheduled',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'Palanquin',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet ipsum dolor sit amet ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'Palanquin',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.delivery_dining_rounded, size: 50),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'On The Way',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'Palanquin',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet ipsum dolor sit amet ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'Palanquin',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.local_car_wash_rounded, size: 50),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Cleaning Up',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'Palanquin',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet ipsum dolor sit amet ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'Palanquin',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.check_circle, size: 50),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Clean Up Done',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'Palanquin',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet ipsum dolor sit amet ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'Palanquin',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Address: ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            ),
                            Text(
                              '2010 Piy Margal St., Sampaloc, Manila',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Booking Date and Time: ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            ),
                            Text(
                              '2/23/2023 @ 8:00 AM',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Washing Date and Time: ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            ),
                            Text(
                              '2/23/2023 @ 10:00 AM',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Payment Option: ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            ),
                            Text(
                              'Cash',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("Tapped Next");
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const paymentPending(
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
                  ],
                ),
              ],
            )
          ],
        )

        );
  }
}
