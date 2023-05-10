import 'package:flutter/material.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/pages/contact_us.dart';
import 'package:tap2wash/pages/home_faqs.dart';
import 'package:tap2wash/pages/my_washers.dart';
import 'package:tap2wash/pages/payment_options.dart';
import 'package:tap2wash/pages/user_intro.dart';
import 'package:tap2wash/pages/user_profile.dart';
import 'package:tap2wash/pages/user_settings.dart';

import '../pages/booking_history.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: const Color.fromRGBO(49, 185, 228, 1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  width: 200,
                  child: const UserAccountsDrawerHeader(
                    accountName: Text(
                      'Juan F. Dela Cruz',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Palanquin',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 16),
                    ),
                    accountEmail: Text(
                      '+639227392730',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Palanquin',
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 14),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.black,
                    ),
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(49, 185, 228, 1)),
                  ),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                alignment: Alignment.center,
                width: 200,
                child: ListTile(
                  iconColor: Colors.white,
                  dense: true,
                  leading: const Icon(Icons.home),
                  title: const Text(
                    'HOME',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MyHomePage(
                              title: 'Tap2Wash',
                            )));
                  },
                ),
              ),
            ]),
            const Divider(
              color: Colors.black,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                alignment: Alignment.center,
                width: 200,
                child: ListTile(
                  iconColor: Colors.white,
                  dense: true,
                  leading: const Icon(Icons.verified_user),
                  title: const Text(
                    'EDIT PROFILE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const userProfile(
                              title: 'Tap2Wash',
                            )));
                  },
                ),
              ),
            ]),
            const Divider(
              color: Colors.black,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                alignment: Alignment.center,
                width: 200,
                child: ListTile(
                  iconColor: Colors.white,
                  dense: true,
                  leading: const Icon(Icons.wallet),
                  title: const Text(
                    'PAYMENT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const paymentOptions(
                              title: 'Tap2Wash',
                            )));
                  },
                ),
              ),
            ]),
            const Divider(
              color: Colors.black,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                alignment: Alignment.center,
                width: 200,
                child: ListTile(
                  iconColor: Colors.white,
                  dense: true,
                  leading: const Icon(Icons.wash),
                  title: const Text(
                    'WASHERS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const myWashers(
                              title: 'Tap2Wash',
                            )));
                  },
                ),
              ),
            ]),
            const Divider(
              color: Colors.black,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                alignment: Alignment.center,
                width: 200,
                child: ListTile(
                  iconColor: Colors.white,
                  dense: true,
                  leading: const Icon(Icons.sticky_note_2),
                  title: const Text(
                    'BOOKINGS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const bookingHistory(
                              title: 'Tap2Wash',
                            )));
                  },
                ),
              ),
            ]),
            const Divider(
              color: Colors.black,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                alignment: Alignment.center,
                width: 200,
                child: ListTile(
                  iconColor: Colors.white,
                  dense: true,
                  leading: const Icon(Icons.settings),
                  title: const Text(
                    'SETTINGS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const userSettings(
                              title: 'Tap2Wash',
                            )));
                  },
                ),
              ),
            ]),
            const Divider(
              color: Colors.black,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                alignment: Alignment.center,
                width: 200,
                child: ListTile(
                  iconColor: Colors.white,
                  dense: true,
                  leading: const Icon(Icons.contact_phone),
                  title: const Text(
                    'CONTACT US',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const contactUs(
                              title: 'Tap2Wash',
                            )));
                  },
                ),
              ),
            ]),
            const Divider(
              color: Colors.black,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                alignment: Alignment.center,
                width: 200,
                child: ListTile(
                  iconColor: Colors.white,
                  dense: true,
                  leading: const Icon(Icons.question_mark_rounded),
                  title: const Text(
                    'FAQs',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Palanquin',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const userInfo(
                              title: 'Tap2Wash',
                            )));
                  },
                ),
              ),
            ]),
            const Divider(
              color: Colors.black,
            ),
          ],
        ));
  }
}
