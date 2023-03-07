import 'package:flutter/material.dart';
import 'package:tap2wash/components/home_settings_button.dart';
import 'package:tap2wash/main.dart';

import 'components/sidebar.dart';

void main() {
  runApp(const MyApp());
}

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
      home: const userSettings(title: 'Tap2Wash'),
    );
  }
}

class userSettings extends StatefulWidget {
  const userSettings({super.key, required this.title});

  final String title;

  @override
  State<userSettings> createState() => _userSettingsState();
}

class _userSettingsState extends State<userSettings> {
  late MediaQueryData queryData;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    List<Widget> list = [
      HomeSettingsButton(
        onTap: () {},
        icon: Icon(Icons.settings),
        title: 'Settings 1',
        description:
            'Lorem ipsum dolor sit amet ipsum dolor sit amet ipsum dolor sit amet ',
      ),
      HomeSettingsButton(
        onTap: () {},
        icon: Icon(Icons.settings),
        title: 'Settings 2',
        description:
            'Lorem ipsum dolor sit amet ipsum dolor sit amet ipsum dolor sit amet ',
      ),
      HomeSettingsButton(
        onTap: () {},
        icon: Icon(Icons.settings),
        title: 'Settings 3',
        description:
            'Lorem ipsum dolor sit amet ipsum dolor sit amet ipsum dolor sit amet ',
      ),
      HomeSettingsButton(
        onTap: () {},
        icon: Icon(Icons.settings),
        title: 'Settings 4',
        description:
            'Lorem ipsum dolor sit amet ipsum dolor sit amet ipsum dolor sit amet ',
      ),
      HomeSettingsButton(
        onTap: () {},
        icon: Icon(Icons.settings),
        title: 'Settings 5',
        description:
            'Lorem ipsum dolor sit amet ipsum dolor sit amet ipsum dolor sit amet ',
      ),
    ];

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
                const SizedBox(height: 20),
                const Text(
                  'Settings',
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Palanquin',
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(49, 185, 228, 1),
                      fontSize: 25),
                ),
                Wrap(
                  children: list,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
