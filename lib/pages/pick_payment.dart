import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tap2wash/pages/booking_confirmation.dart';
import 'package:tap2wash/main.dart';

import '../app_state_model.dart';
import '../components/home_payment_button.dart';
import '../components/sidebar.dart';

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

class pickPayment extends StatefulWidget {
  const pickPayment({super.key, required this.title});

  final String title;

  @override
  State<pickPayment> createState() => _pickPayment();
}

class _pickPayment extends State<pickPayment> {
  late MediaQueryData queryData;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    var model = Provider.of<AppStateModel>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    return Consumer<AppStateModel>(builder: (context, model, child){
      List<Widget> list = [
        HomePaymentButton(
          onTap: () {
            model.setPayment(pickedPayment:'GCash');
            setState(() {
              selectedIndex = 0;
              Text(model.payment.toString());
            });
          },
          selected: selectedIndex == 0,
          title: 'Gcash',
          icon: Icon(Icons.camera_sharp, size: 50),
          accName: 'Juan F. Dela Cruz',
          accNum: '+639227392730',
        ),
        HomePaymentButton(
          onTap: () {
            model.setPayment(pickedPayment:'UnionBank');
            setState(() {
              selectedIndex = 1;
              Text(model.payment.toString());
            });
          },
          selected: selectedIndex == 1,
          title: 'UnionBank',
          icon: Icon(Icons.house_rounded, size: 50),
          accName: 'Juan F. Dela Cruz',
          accNum: '6578-XXXX-XXX',
        ),
        HomePaymentButton(
          onTap: () {
            model.setPayment(pickedPayment:'Cash');
            setState(() {
              selectedIndex = 2;
              Text(model.payment.toString());
            });
          },
          selected: selectedIndex == 2,
          title: 'Cash',
          icon: Icon(Icons.account_balance_wallet_rounded, size: 50),
          accName: 'Juan F. Dela Cruz',
          accNum: '+639227392730',
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
                        'Select payment:',
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
                              builder: (context) => const bookingConfirmation(
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
    });
  }
}