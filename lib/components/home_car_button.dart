import 'package:flutter/material.dart';

class HomeCarButton extends StatefulWidget {
  const HomeCarButton(
      {super.key,
      required this.onTap,
      required this.selected,
      required this.image,
      required this.title});

  final bool selected;
  final String title;
  final String image;

  // final String summary;
  final Function()? onTap;

  @override
  State<HomeCarButton> createState() => _HomeCarButtonState();
}

class _HomeCarButtonState extends State<HomeCarButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(
            color: widget.selected
                ? Color.fromRGBO(49, 185, 228, 1)
                : Color.fromRGBO(245, 245, 245, 1),
            width: 1.0,
          ),
        ),
        color: Colors.white,
        child: SizedBox(
            width: 180,
            height: 140,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Image.asset(widget.image),
                ),
              ],
            )),
      ),
    );
  }
}
