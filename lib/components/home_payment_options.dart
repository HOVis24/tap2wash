import 'package:flutter/material.dart';
import 'package:tap2wash/edit_payment.dart';

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
          borderRadius: BorderRadius.circular(30.0),
          side: const BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        child: SizedBox(
            width: 355,
            height: 130,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      widget.option,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Palanquin',
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    SizedBox(),
                    SizedBox(),
                  ],
                ),
                SizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    widget.icon,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          widget.title,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Palanquin',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                        Text(
                          widget.accName,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Palanquin',
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 15),
                        ),
                        Text(
                          widget.accNum,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // GestureDetector(
                        //   onTap: () {
                        //     print("Tapped Primary");
                        //   },
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(30.0),
                        //     ),
                        //     color: const Color.fromRGBO(49, 110, 228, 1),
                        //     child: SizedBox(
                        //         width: 73,
                        //         height: 24,
                        //         child: Row(
                        //           mainAxisAlignment: MainAxisAlignment.center,
                        //           children: const <Widget>[
                        //             Icon(
                        //               Icons.switch_access_shortcut,
                        //               size: 15,
                        //               color: Colors.white,
                        //             ),
                        //             Text(
                        //               'PRIMARY',
                        //               textAlign: TextAlign.center,
                        //               style: TextStyle(
                        //                   decoration: TextDecoration.none,
                        //                   fontFamily: 'Palanquin',
                        //                   fontWeight: FontWeight.w600,
                        //                   color: Colors.white,
                        //                   fontSize: 10),
                        //             ),
                        //           ],
                        //         )),
                        //   ),
                        // ),
                        GestureDetector(
                          onTap: () {
                            print("Tapped Remove");
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            color: const Color.fromRGBO(228, 49, 49, 1),
                            child: SizedBox(
                                width: 73,
                                height: 24,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    Icon(
                                      Icons.remove_circle_outline_sharp,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'REMOVE',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'Palanquin',
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontSize: 10),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("Tapped Edit");
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const editPayment(title: 'Tap2Wash')));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            color: const Color.fromRGBO(49, 185, 228, 1),
                            child: SizedBox(
                                width: 73,
                                height: 24,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    Icon(
                                      Icons.edit,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'EDIT INFO',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'Palanquin',
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontSize: 10),
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
            )),
      ),
    );
  }
}
