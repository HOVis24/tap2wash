import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tap2wash/carwash_feedback.dart';
import 'package:tap2wash/main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tap2Wash',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tap2Wash'),
    );
  }
}

class carwashProfile extends StatefulWidget {
  const carwashProfile({super.key, required this.title});

  final String title;

  @override
  State<carwashProfile> createState() => _carwashProfile();
}

class _carwashProfile extends State<carwashProfile> {
  late MediaQueryData queryData;
  int selectedIndex = 0;
  late final _ratingController;
  late double _rating;

  double _userRating = 3.0;
  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  bool _isRTLMode = false;
  bool _isVertical = false;
  IconData? _selectedIcon;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    return Stack(
      children: <Widget>[
        Container(
          width: queryData.size.width,
          height: queryData.size.height,
          decoration: const BoxDecoration(color: Colors.white),
        ),
        Column(
          children: <Widget>[
            AppBar(
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.
              backgroundColor: const Color.fromRGBO(49, 185, 228, 1),
              toolbarHeight: 70,
              leading: const Icon(Icons.logo_dev),
              title: Text(widget.title),
              actions: [
                const Icon(Icons.menu_sharp),
                Container(
                  width: 30,
                )
              ],
              centerTitle: true,
              titleTextStyle: const TextTheme(
                headline6: TextStyle(
                  // headline6 is used for setting title's theme
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'Palanquin',
                  fontWeight: FontWeight.w600,
                ),
              ).headline6,
            ),
            SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              color: Colors.white,
              child: SizedBox(
                  width: 350,
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.person_pin, size: 100),
                      Text(
                        'Juan F. Dela Cruz',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Palanquin',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 25),
                      ),
                      Flexible(
                        child: Text(
                          'Quezon City',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Palanquin',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                      ),
                      RatingBarIndicator(
                        rating: 4.5,
                        itemCount: 5,
                        itemSize: 30.0,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    print("Tapped Next");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MyHomePage(
                              title: 'Tap2Wash',
                            )));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: const Color.fromRGBO(74, 83, 151, 1),
                    child: SizedBox(
                        width: 150,
                        height: 55,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(
                              Icons.keyboard_return_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              ' GO BACK',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15),
                            ),
                          ],
                        )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Tapped Next");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const carwashFeedback(
                              title: 'Tap2Wash',
                            )));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: const Color.fromRGBO(49, 185, 228, 1),
                    child: SizedBox(
                        width: 150,
                        height: 55,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(
                              Icons.edit_note_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              ' SEND FEEDBACK',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15),
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
    );
  }
}
