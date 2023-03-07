import 'package:flutter/material.dart';

class HomeServiceButton extends StatefulWidget {
  const HomeServiceButton(
      {super.key,
      required this.onTap,
      required this.selected,
      required this.icon,
      required this.title,
      required this.summary});

  final bool selected;
  final Icon icon;
  final String title;
  final String summary;
  final Function()? onTap;

  @override
  State<HomeServiceButton> createState() => _HomeServiceButtonState();
}

class _HomeServiceButtonState extends State<HomeServiceButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          color: const Color.fromRGBO(224, 251, 252, 1),
          child: SizedBox(
              width: 165,
              height: 125,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      widget.selected
                          ? Icon(Icons.check_box_rounded)
                          : Icon(Icons.check_box_outline_blank_rounded),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                  widget.icon,
                  Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                  Text(
                    widget.summary,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        color: Colors.black,
                        fontSize: 12),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
