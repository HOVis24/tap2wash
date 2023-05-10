import 'package:flutter/material.dart';
import 'package:tap2wash/pages/edit_payment.dart';

class HomePaymentOptions extends StatefulWidget {
  const HomePaymentOptions(
      {super.key,
        required this.option,
        required this.icon,
        required this.accName,
        required this.accNum,
        required this.title,
        required this.primary});

  final bool primary;
  final String option;
  final String title;
  final Icon icon;
  final String accName;
  final String accNum;

  @override
  State<HomePaymentOptions> createState() => _HomePaymentOptionsState();
}

class _HomePaymentOptionsState extends State<HomePaymentOptions> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(
                color: const Color.fromRGBO(49, 185, 228, 1),
                width: 1.0,
              ),
            ),
            child: SizedBox(
                width: 350,
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        widget.icon,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 150,
                              child: Text(
                                widget.title,
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Palanquin',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              child: Text(
                                widget.accName,
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Palanquin',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                    fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              child: Text(
                                widget.accNum,
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Palanquin',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const editPayment(
                                      title: 'Tap2Wash',
                                    )));
                              },
                              child: Card(
                                color: const Color.fromRGBO(236, 250, 255, 1),
                                child: SizedBox(
                                    width: 60,
                                    height: 30,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const <Widget>[
                                        Text(
                                          'EDIT',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontFamily: 'Palanquin',
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(62, 171, 239, 1),
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
                ))));
  }
}
