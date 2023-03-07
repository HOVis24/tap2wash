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
          color: Colors.black,
          width: 1.0,
        ),
      ),
      color: Colors.white,
      child: SizedBox(
          width: 370,
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RichText(
                  text: TextSpan(
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Palanquin',
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 12),
                      children: <TextSpan>[
                    TextSpan(text: 'Date & Time: '),
                    TextSpan(text: widget.date),
                    TextSpan(text: ' @ '),
                    TextSpan(text: widget.time),
                  ])),
              RichText(
                  text: TextSpan(
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Palanquin',
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 12),
                      children: <TextSpan>[
                    TextSpan(text: 'Location: '),
                    TextSpan(text: widget.location),
                  ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 12),
                              children: <TextSpan>[
                            TextSpan(text: 'Service: '),
                            TextSpan(text: widget.service),
                          ])),
                      RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 12),
                              children: <TextSpan>[
                            TextSpan(text: 'Car: '),
                            TextSpan(text: widget.car),
                          ])),
                    ],
                  ),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  Column(
                    children: [
                      RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 12),
                              children: <TextSpan>[
                            TextSpan(text: 'Status: '),
                            TextSpan(text: widget.status),
                          ])),
                      RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 12),
                              children: <TextSpan>[
                            TextSpan(text: 'Payment: '),
                            TextSpan(text: widget.payment),
                          ])),
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}
