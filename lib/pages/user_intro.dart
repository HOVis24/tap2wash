import 'package:flutter/material.dart';
import 'package:tap2wash/main.dart';

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
      home: const userInfo(title: 'Tap2Wash'),
    );
  }
}

class userInfo extends StatefulWidget {
  const userInfo({super.key, required this.title});

  final String title;

  @override
  State<userInfo> createState() => _userInfoState();
}

class _userInfoState extends State<userInfo> {
  late MediaQueryData queryData;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
              width: queryData.size.width,
              height: queryData.size.height,
              decoration: const BoxDecoration(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Welcome to Tap2Wash!',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Palanquin',
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(49, 185, 228, 1),
                            fontSize: 30),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Say goodbye to the hassle of car washing and hello to a shiny, clean ride with just six easy steps on our app. ',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Palanquin',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: Row(
                          children: [
                            Image.asset('assets/images/Num1.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Select the ",
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 14),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "car wash service",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700)),
                                    TextSpan(text: " you need.")
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: Row(
                          children: [
                            Image.asset('assets/images/Num2.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    text: "Choose the ",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Palanquin',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 14),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: "location",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700)),
                                      TextSpan(
                                          text:
                                              " where you want the service to be performed.")
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: Row(
                          children: [
                            Image.asset('assets/images/Num3.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Pick the ",
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 14),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "type of vehicle",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700)),
                                    TextSpan(text: " you have.")
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: Row(
                          children: [
                            Image.asset('assets/images/Num4.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    text: "Select the ",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Palanquin',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 14),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: "date and time",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700)),
                                      TextSpan(
                                          text: " that works best for you.")
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: Row(
                          children: [
                            Image.asset('assets/images/Num5.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Choose your preferred ",
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 14),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "payment method.",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700)),
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: Row(
                          children: [
                            Image.asset('assets/images/Num6.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    text: '',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Palanquin',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 14),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: "Confirm your booking",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700)),
                                      TextSpan(
                                          text:
                                              " and relax while we take care of the rest.")
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: Row(
                          children: [
                            const Expanded(
                              child: Text(
                                'And that’s it! Enjoy your sparkling clean vehicle. \nThanks for choosing Tap2Wash, and happy washing!',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Palanquin',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          print("Tapped Go");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const MyHomePage(
                                title: 'Tap2Wash',
                              )));
                        },
                        child: Card(
                          color: const Color.fromRGBO(49, 185, 221, 1),
                          child: SizedBox(
                              width: queryData.size.width,
                              height: 50,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Text(
                                    'Start booking',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Palanquin',
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
