import 'package:flutter/material.dart';

class OnGoingOrders extends StatefulWidget {
  const OnGoingOrders(
      {super.key,
      required this.date,
      required this.time,
      required this.location,
      required this.service,
      required this.car,
      required this.status,
      required this.payment});

  final String date, time, location, service, car, status, payment;

  @override
  State<OnGoingOrders> createState() => _OnGoingOrdersState();
}

class _OnGoingOrdersState extends State<OnGoingOrders> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: const BorderSide(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
      color: Colors.white,
      child: SizedBox(
          width: 350,
          height: 120,
          child: Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                      text: TextSpan(
                          style: const TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Palanquin',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 12),
                          children: <TextSpan>[
                        const TextSpan(text: 'Date & Time: '),
                        TextSpan(
                            text: widget.date,
                            style:
                                const TextStyle(fontWeight: FontWeight.w400)),
                        const TextSpan(
                            text: ' @ ',
                            style: TextStyle(fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: widget.time,
                            style:
                                const TextStyle(fontWeight: FontWeight.w400)),
                      ])),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                      text: TextSpan(
                          style: const TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Palanquin',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 12),
                          children: <TextSpan>[
                        const TextSpan(text: 'Location: '),
                        TextSpan(
                            text: widget.location,
                            style:
                                const TextStyle(fontWeight: FontWeight.w400)),
                      ])),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 150,
                          child: RichText(
                              text: TextSpan(
                                  style: const TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 12),
                                  children: <TextSpan>[
                                const TextSpan(text: 'Service: '),
                                TextSpan(
                                    text: widget.service,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400)),
                              ])),
                        ),
                        SizedBox(
                          width: 150,
                          child: RichText(
                              text: TextSpan(
                                  style: const TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 12),
                                  children: <TextSpan>[
                                const TextSpan(text: 'Car: '),
                                TextSpan(
                                    text: widget.car,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400)),
                              ])),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 150,
                          child: RichText(
                              text: TextSpan(
                                  style: const TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 12),
                                  children: <TextSpan>[
                                const TextSpan(text: 'Status: '),
                                TextSpan(
                                    text: widget.status,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400)),
                              ])),
                        ),
                        SizedBox(
                          width: 150,
                          child: RichText(
                              text: TextSpan(
                                  style: const TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 12),
                                  children: <TextSpan>[
                                const TextSpan(text: 'Payment: '),
                                TextSpan(
                                    text: widget.payment,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400)),
                              ])),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
