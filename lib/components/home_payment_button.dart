import 'package:flutter/material.dart';

class HomePaymentButton extends StatefulWidget {
  const HomePaymentButton(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.accName,
      required this.accNum,
      required this.selected,
      required this.title});

  final bool selected;
  final String title;
  final Icon icon;
  final String accName;
  final String accNum;
  final Function()? onTap;

  @override
  State<HomePaymentButton> createState() => _HomePaymentButtonState();
}

class _HomePaymentButtonState extends State<HomePaymentButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 10.0, bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.selected
              ? const Icon(
                  Icons.check_circle,
                  color: Color.fromRGBO(49, 185, 228, 1),
                  size: 30,
                )
              : const Icon(
                  Icons.circle_outlined,
                  color: Colors.grey,
                  size: 30,
                ),
          const SizedBox(
            width: 15,
          ),
          GestureDetector(
            onTap: widget.onTap,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(
                  color: widget.selected
                      ? const Color.fromRGBO(49, 185, 228, 1)
                      : Colors.grey,
                  width: 1.0,
                ),
                // widget.selected ?
                // Color.fromRGBO(49, 185, 228, 1) : Color.fromRGBO(255, 255, 255, 1),
              ),
              child: SizedBox(
                  width: 250,
                  height: 100,
                  child: Row(
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
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
