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
            borderRadius: BorderRadius.circular(5.0),
            side: const BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
            // widget.selected ?
            // Color.fromRGBO(49, 185, 228, 1) : Color.fromRGBO(255, 255, 255, 1),
          ),
          child: SizedBox(
              width: 90,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        fontWeight: FontWeight.w700,
                        color: widget.selected ? Colors.white : Colors.black,
                        fontSize: 16),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
