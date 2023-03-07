import 'package:flutter/material.dart';
import 'package:tap2wash/main.dart';

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

class paymentPending extends StatefulWidget {
  const paymentPending({super.key, required this.title});

  final String title;

  @override
  State<paymentPending> createState() => _paymentPending();
}

class _paymentPending extends State<paymentPending> {
  late MediaQueryData queryData;

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
                      margin: EdgeInsets.all(10),
                      width: 380,
                      height: 250,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              'Your booking is currently',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 30),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'ON HOLD',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.orange,
                                  fontSize: 30),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'Please pay the full amount to proceed with your booking.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Tapped Confirm");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const MyHomePage(title: 'Tap2Wash')));
                      },
                      child: Card(
                        margin: const EdgeInsets.only(right: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: const Color.fromRGBO(49, 185, 228, 1),
                        child: SizedBox(
                            width: 120,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const <Widget>[
                                Text(
                                  'CONFIRM',
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
                  margin: EdgeInsets.all(10),
                  width: 380,
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          'Your booking is currently',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Palanquin',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 30),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'ON HOLD',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Palanquin',
                              fontWeight: FontWeight.w600,
                              color: Colors.orange,
                              fontSize: 30),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'Please pay the full amount to proceed with your booking.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Palanquin',
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    print("Tapped Confirm");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const MyHomePage(title: 'Tap2Wash')));
                  },
                  child: Card(
                    margin: const EdgeInsets.only(right: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: const Color.fromRGBO(49, 185, 228, 1),
                    child: SizedBox(
                        width: 120,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const <Widget>[
                            Text(
                              'CONFIRM',
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
    );
  }
}
