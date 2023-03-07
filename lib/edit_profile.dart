import 'package:flutter/material.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/user_profile.dart';

import 'components/sidebar.dart';

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

class editProfile extends StatefulWidget {
  const editProfile({super.key, required this.title});

  final String title;

  @override
  State<editProfile> createState() => _editProfile();
}

class _editProfile extends State<editProfile> {
  late MediaQueryData queryData;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          backgroundColor: const Color.fromRGBO(49, 185, 228, 1),
          toolbarHeight: 70,
          title: Text(widget.title),
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
        drawer: Drawer(
          child: SideBar(),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              width: queryData.size.width,
              height: queryData.size.height,
              decoration: const BoxDecoration(color: Colors.white),
            ),
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'Edit Profile:',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Palanquin',
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(49, 185, 228, 1),
                          fontSize: 25),
                    ),
                  ),
                ),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.person_pin, size: 100),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  print("Tapped Next");
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const editProfile(
                                            title: 'Tap2Wash',
                                          )));
                                },
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  color: const Color.fromRGBO(49, 185, 228, 1),
                                  child: SizedBox(
                                      width: 120,
                                      height: 35,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const <Widget>[
                                          Icon(
                                            Icons.cloud_upload,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            'UPLOAD',
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
                              )
                            ],
                          ),
                          Text(
                            'Full Name:',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 15),
                          ),
                          Text(
                            'Juan F. Dela Cruz',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 15),
                          ),
                          Text(
                            'Address:',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 15),
                          ),
                          Flexible(
                            child: Text(
                              'Mezza II Residences, Guirayan St., Quezon City',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Palanquin',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 15),
                            ),
                          ),
                          Text(
                            'Sex:',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 15),
                          ),
                          Text(
                            'Male',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 15),
                          ),
                          Text(
                            'Birthday:',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 15),
                          ),
                          Text(
                            'September 23, 1991',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Palanquin',
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 15),
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Tapped Go Back");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const userProfile(
                                  title: 'Tap2Wash',
                                )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: const Color.fromRGBO(74, 83, 151, 1),
                        child: SizedBox(
                            width: 130,
                            height: 45,
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
                        print("Tapped Confirm");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const userProfile(
                                  title: 'Tap2Wash',
                                )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: const Color.fromRGBO(49, 185, 228, 1),
                        child: SizedBox(
                            width: 130,
                            height: 45,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(
                                  Icons.edit_note_rounded,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text(
                                  ' CONFIRM',
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
        ));
  }
}
