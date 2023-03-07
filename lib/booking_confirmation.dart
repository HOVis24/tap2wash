import 'package:flutter/material.dart';
import 'package:tap2wash/booking_details.dart';
import 'package:tap2wash/main.dart';

import 'components/home_booking_confirmation.dart';
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

class bookingConfirmation extends StatefulWidget {
  const bookingConfirmation({super.key, required this.title});

  final String title;

  @override
  State<bookingConfirmation> createState() => _bookingConfirmation();
}

class _bookingConfirmation extends State<bookingConfirmation> {
  late MediaQueryData queryData;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    List<Widget> list = [
      HomeBookingConfirmation(
        onTap: () {
          setState(() {
            selectedIndex = 0;
          });
        },
        selected: selectedIndex == 0,
        title: 'Full Wash',
      ),
      HomeBookingConfirmation(
        onTap: () {
          setState(() {
            selectedIndex = 1;
          });
        },
        selected: selectedIndex == 1,
        title: 'SUV',
      ),
      HomeBookingConfirmation(
        onTap: () {
          setState(() {
            selectedIndex = 4;
          });
        },
        selected: selectedIndex == 4,
        title: '1146 Centro St., Sampaloc, Manila',
      ),
      HomeBookingConfirmation(
        onTap: () {
          setState(() {
            selectedIndex = 2;
          });
        },
        selected: selectedIndex == 2,
        title: '3/1/2023 @ 11:00 AM',
      ),
      HomeBookingConfirmation(
        onTap: () {
          setState(() {
            selectedIndex = 3;
          });
        },
        selected: selectedIndex == 3,
        title: 'Gcash',
      ),
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
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, top: 50),
                    child: const Text(
                      'Selected items:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Palanquin',
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(49, 185, 228, 1),
                          fontSize: 40),
                    ),
                  ),
                ),
                Wrap(children: list, runSpacing: 10, spacing: 10),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Tapped Next");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const bookingDetails(
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
        ));
  }
}
