import 'package:flutter/material.dart';

class HomeServiceButton extends StatefulWidget {
  const HomeServiceButton(
      {super.key,
      required this.onTap,
      required this.selected,
      required this.icon,
      required this.title,
      required this.summary,
      required this.price});

  final bool selected;
  final Icon icon;
  final String title;
  final String summary;
  final String price;
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
            side: BorderSide(
              color: widget.selected
                  ? Color.fromRGBO(49, 185, 228, 1)
                  : Colors.grey,
              width: 1.0,
            ),
          ),
          color: Colors.white,
          child: SizedBox(
              width: 170,
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  widget.icon,
                  Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        fontWeight: FontWeight.w600,
                        color: widget.selected
                            ? Color.fromRGBO(49, 185, 228, 1)
                            : Colors.black,
                        fontSize: 15),
                  ),
                  Text(
                    widget.summary,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        color: widget.selected
                            ? Color.fromRGBO(49, 185, 228, 1)
                            : Colors.black,
                        fontSize: 12),
                  ),
                  Container(
                    width: 150,
                    color: widget.selected
                        ? Color.fromRGBO(236, 250, 255, 1)
                        : Colors.white,
                    child: Align(
                      alignment: Alignment.center,
                      child: RichText(
                          text: TextSpan(
                              style: const TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  color: Colors.black,
                                  fontSize: 12),
                              children: <TextSpan>[
                            const TextSpan(
                              text: 'Price starts at P',
                            ),
                            TextSpan(
                                text: widget.price,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: widget.selected
                                        ? Color.fromRGBO(74, 83, 151, 1)
                                        : Colors.black)),
                          ])),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
