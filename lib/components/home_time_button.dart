import 'package:flutter/material.dart';

class HomeTimeButton extends StatefulWidget {
  const HomeTimeButton(
      {super.key,
      required this.onTap,
      required this.selected,
      required this.title});

  final bool selected;
  final String title;
  final Function()? onTap;

  @override
  State<HomeTimeButton> createState() => _HomeTimeButtonState();
}

class _HomeTimeButtonState extends State<HomeTimeButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        child: Card(
          color: widget.selected ? Color.fromRGBO(49, 185, 228, 1) : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
            // widget.selected ?
            // Color.fromRGBO(49, 185, 228, 1) : Color.fromRGBO(255, 255, 255, 1),
          ),
          child: SizedBox(
              width: 120,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
