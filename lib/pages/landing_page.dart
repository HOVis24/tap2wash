import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required this.title});

  final String title;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late MediaQueryData queryData;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          width: queryData.size.width,
          height: queryData.size.height,
          decoration: const BoxDecoration(color: Colors.white),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/tap2wash_logo.png',
                scale: 1.5,
              ),
              const SizedBox(
                height: 100,
              ),
              GestureDetector(
                onTap: () {
                  // route to MAIN
                },
                child: Card(
                  color: const Color.fromRGBO(236, 250, 255, 1),
                  child: SizedBox(
                      width: 180,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'Sign In',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(62, 171, 239, 1),
                                fontSize: 15),
                          ),
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  // route to MAIN
                },
                child: Card(
                  color: const Color.fromRGBO(62, 171, 239, 1),
                  child: SizedBox(
                      width: 180,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'Sign Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(236, 250, 255, 1),
                                fontSize: 15),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
