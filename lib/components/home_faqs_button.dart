import 'package:flutter/material.dart';

class HomeSettingsButton extends StatefulWidget {
  const HomeSettingsButton(
      {super.key,
      required this.onTap,
      required this.description,
      required this.icon,
      required this.title});

  final Icon icon;
  final String title;
  final String description;
  final Function()? onTap;

  @override
  State<HomeSettingsButton> createState() => _HomeSettingsButtonState();
}

class _HomeSettingsButtonState extends State<HomeSettingsButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        height: 80,
        width: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                widget.icon,
                SizedBox(
                  width: 5,
                ),
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Palanquin',
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 15),
                ),
              ],
            ),
            Text(
              widget.description,
              textAlign: TextAlign.left,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Palanquin',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 13),
            ),
            Divider(
              height: 5,
              thickness: 2,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
