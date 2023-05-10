import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:place_picker/place_picker.dart';
import 'package:provider/provider.dart';
import 'package:tap2wash/app_state_model.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/pages/pick_date.dart';
import 'package:tap2wash/pages/pick_service.dart';
import 'package:tap2wash/pages/user_profile.dart';

import '../components/sidebar.dart';

class picKLocation extends StatelessWidget {
  const picKLocation({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/second',
      routes: {
        '/first': (context) => const MyHomePage(title: 'Tap2Wash'),
        '/second': (context) => const pickService(title: 'Tap2Wash'),
        '/third': (context) => const userProfile(title: 'Tap2Wash'),
      },
      title: 'Tap2Wash',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tap2Wash'),
    );
  }
}

class pickLocation extends StatefulWidget {
  const pickLocation({super.key, required this.title});

  final String title;

  @override
  State<pickLocation> createState() => _pickLocation();
}

class _pickLocation extends State<pickLocation> {
  late MediaQueryData queryData;

  @override
  void initState() {
    super.initState();
    var model = Provider.of<AppStateModel>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    var locInput = TextEditingController();
    dynamic customLocation = locInput;
    int selectedIndex = 0;
    int _selectedIndex = 1;

    return Consumer<AppStateModel>(builder: (context, model, child) {
      void showPlacePicker() async {
        LocationResult? result =
            await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PlacePicker(
                      "AIzaSyDiwjpaj_nJk_b2Lln0w3onLIw8U_PvbFo",
                    )));
        print(result!.name.toString());
        locInput.text = result.name.toString();
        model.setAddress(pickedAddress: locInput.text);
      }

      return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/images/home_btn.svg'),
                  label: 'Home'),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/book_service_btn.svg',
                ),
                label: 'Book a Service',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/profile_btn.svg'),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            onTap: (index) {
              switch (index) {
                case 0:
                  Navigator.pushNamed(context, "/first");
                  break;
                case 1:
                  Navigator.pushNamed(context, "/second");
                  break;
                case 2:
                  Navigator.pushNamed(context, "/third");
                  break;
              }
            },
          ),
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(224, 251, 252, 1),
            toolbarHeight: 80,
            title: Image.asset(
              'assets/images/tap2wash_logo_2.png',
              scale: 1.3,
            ),
            centerTitle: true,
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
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 5, bottom: 5),
                      child: GestureDetector(
                          child: SvgPicture.asset(
                            'assets/images/back_btn.svg',
                          ),
                          onTap: () => Navigator.pop(context)),
                    ),
                  ),
                  LinearPercentIndicator(
                    width: queryData.size.width,
                    lineHeight: 5.0,
                    percent: 0.45,
                    backgroundColor: Colors.grey,
                    progressColor: const Color.fromRGBO(49, 185, 228, 1),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: SvgPicture.asset(
                          'assets/images/location_icon.svg',
                        )),
                  ),
                  SizedBox(
                    width: queryData.size.width - 30,
                    height: 80,
                    child: GestureDetector(
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Color.fromRGBO(226, 226, 226, 1)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 15, right: 5),
                              child: Icon(
                                Icons.search,
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              child: TextField(
                                readOnly: true,
                                controller: locInput,
                                onTap: () {
                                  showPlacePicker();
                                  // setState(() {
                                  //   model.setAddress(pickedAddress: locInput.text);
                                  //   print(locInput);
                                  // });
                                },
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Pickup Point:',
                                    hintStyle: TextStyle(
                                        color: Color.fromRGBO(129, 129, 129, 1),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Palanquin')),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Palanquin'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () {
                          print("Tapped Next");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const pickDate(
                                    title: 'Tap2Wash',
                                  )));
                        },
                        child: Card(
                          color: const Color.fromRGBO(236, 250, 255, 1),
                          child: SizedBox(
                              width: 90,
                              height: 45,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Text(
                                    'NEXT',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Palanquin',
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(49, 185, 228, 1),
                                        fontSize: 20),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Color.fromRGBO(49, 185, 228, 1),
                                  )
                                ],
                              )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ));
    });
  }
}
