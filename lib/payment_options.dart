import 'package:flutter/material.dart';
import 'package:tap2wash/main.dart';

import 'components/home_payment_options.dart';
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

class paymentOptions extends StatefulWidget {
  const paymentOptions({super.key, required this.title});

  final String title;

  @override
  State<paymentOptions> createState() => _paymentOptions();
}

class _paymentOptions extends State<paymentOptions> {
  late MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    List<Widget> list = [
      HomePaymentOptions(
        option: 'Main Option',
        title: 'Gcash',
        icon: Icon(Icons.camera_sharp, size: 50),
        accName: 'Juan F. Dela Cruz',
        accNum: '+639227392730',
        primary: true,
      ),
      HomePaymentOptions(
        option: 'Second Option',
        title: 'UnionBank',
        icon: Icon(Icons.house_rounded, size: 50),
        accName: 'Juan F. Dela Cruz',
        accNum: '6578-XXXX-XXX',
        primary: false,
      ),
      HomePaymentOptions(
        option: 'Third Option',
        title: 'Cash',
        icon: Icon(Icons.account_balance_wallet_rounded, size: 50),
        accName: 'Juan F. Dela Cruz',
        accNum: '+639227392730',
        primary: false,
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
                  alignment: Alignment.center,
                  child: Container(
                    child: const Text(
                      'Payment Options',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Palanquin',
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(49, 185, 228, 1),
                          fontSize: 25),
                    ),
                  ),
                ),
                Wrap(children: list),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Tapped Back");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MyHomePage(
                                  title: 'Tap2Wash',
                                )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: const Color.fromRGBO(74, 83, 151, 1),
                        margin: EdgeInsets.only(right: 20),
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
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
