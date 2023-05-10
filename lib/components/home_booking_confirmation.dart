import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBookingConfirmation extends StatefulWidget {
  const HomeBookingConfirmation(
      {super.key,
      required this.selected,
      required this.service,
      required this.car,
      required this.address,
      required this.date,
      required this.time,
      required this.payment});

  final bool selected;
  final String service;
  final String car;
  final String address;
  final String date;
  final String time;
  final String payment;

  @override
  State<HomeBookingConfirmation> createState() =>
      _HomeBookingConfirmationState();
}

class _HomeBookingConfirmationState extends State<HomeBookingConfirmation> {
  late MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return GestureDetector(
      child: SizedBox(
          width: queryData.size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: SvgPicture.asset(
                          'assets/images/service_review_icon.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        widget.service,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Palanquin',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child:
                          SvgPicture.asset('assets/images/car_review_icon.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        widget.car,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Palanquin',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: SvgPicture.asset(
                          'assets/images/location_review_icon.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        widget.address,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Palanquin',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: SvgPicture.asset(
                        'assets/images/calendar_review_icon.svg',
                        width: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: RichText(
                        text: TextSpan(
                            text: widget.date,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 16),
                            children: <TextSpan>[
                              TextSpan(text: ' @ '),
                              TextSpan(text: widget.time)
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: SvgPicture.asset(
                        'assets/images/payment_review_icon.svg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        widget.payment,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Palanquin',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
