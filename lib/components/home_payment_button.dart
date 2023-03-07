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
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: const BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
            // widget.selected ?
            // Color.fromRGBO(49, 185, 228, 1) : Color.fromRGBO(255, 255, 255, 1),
          ),
          child: SizedBox(
              width: 355,
              height: 100,
              child: Row(
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
                  widget.selected
                      ? Icon(Icons.check_box_rounded)
                      : Icon(Icons.check_box_outline_blank_rounded),
                ],
              )),
        ),
      ),
    );
  }
}
