import 'package:flutter/material.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/payment_options.dart';

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

class editPayment extends StatefulWidget {
  const editPayment({super.key, required this.title});

  final String title;

  @override
  State<editPayment> createState() => _editPayment();
}

class _editPayment extends State<editPayment> {
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
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'EDIT INFORMATION',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Palanquin',
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(49, 185, 228, 1),
                          fontSize: 25),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  child: SizedBox(
                      width: 355,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.camera, size: 50),
                              SizedBox(),
                              Column(
                                children: [
                                  Text(
                                    'GCash',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Palanquin',
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    'Juan F. Dela Cruz',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Palanquin',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    '+639227392730',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Palanquin',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  child: SizedBox(
                      width: 355,
                      height: 320,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                'BANK',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Palanquin',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15),
                              ),
                              TextField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter bank name',
                                ),
                              ),
                              Text(
                                'FULL NAME',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Palanquin',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15),
                              ),
                              TextField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter name',
                                ),
                              ),
                              Text(
                                'ACCOUNT NUMBER',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Palanquin',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15),
                              ),
                              TextField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter account number',
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Tapped Back");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const paymentOptions(
                                  title: 'Tap2Wash',
                                )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: const Color.fromRGBO(74, 83, 151, 1),
                        child: SizedBox(
                            width: 130,
                            height: 45,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(
                                  Icons.keyboard_return_rounded,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text(
                                  ' GO BACK',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 15),
                                ),
                              ],
                            )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Tapped Confirm");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const paymentOptions(
                                  title: 'Tap2Wash',
                                )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: const Color.fromRGBO(49, 185, 228, 1),
                        child: SizedBox(
                            width: 130,
                            height: 45,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(
                                  Icons.edit_note_rounded,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text(
                                  ' CONFIRM',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 15),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
