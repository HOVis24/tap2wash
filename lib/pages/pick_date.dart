import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:tap2wash/app_state_model.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/pages/pick_payment.dart';
import 'package:tap2wash/pages/pick_service.dart';
import 'package:tap2wash/pages/user_profile.dart';

import '../components/home_time_button.dart';
import '../components/sidebar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

class pickDate extends StatefulWidget {
  const pickDate({super.key, required this.title});

  final String title;

  @override
  State<pickDate> createState() => _pickDateState();
}

class _pickDateState extends State<pickDate> {
  late MediaQueryData queryData;
  var dateInput = TextEditingController();
  int selectedIndex = 0; // This is for the time
  int _selectedIndex = 1; // This is for the bottom navbar!

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    initializeDateFormatting();

    return Consumer<AppStateModel>(builder: (context, model, child) {
      List<Widget> list = [
        HomeTimeButton(
          onTap: () {
            model.setTime(pickedTime: '9:00 AM');
            setState(() {
              selectedIndex = 0;
            });
          },
          selected: selectedIndex == 0,
          title: '9:00 AM',
        ),
        HomeTimeButton(
          onTap: () {
            model.setTime(pickedTime: '10:00 AM');
            setState(() {
              selectedIndex = 1;
            });
          },
          selected: selectedIndex == 1,
          title: '10:00 AM',
        ),
        HomeTimeButton(
          onTap: () {
            model.setTime(pickedTime: '11:00 AM');
            setState(() {
              selectedIndex = 2;
            });
          },
          selected: selectedIndex == 2,
          title: '11:00 AM',
        ),
        HomeTimeButton(
          onTap: () {
            model.setTime(pickedTime: '12:00 PM');
            setState(() {
              selectedIndex = 3;
            });
          },
          selected: selectedIndex == 3,
          title: '12:00 PM',
        ),
        HomeTimeButton(
          onTap: () {
            model.setTime(pickedTime: '1:00 PM');
            setState(() {
              selectedIndex = 4;
            });
          },
          selected: selectedIndex == 4,
          title: '1:00 PM',
        ),
        HomeTimeButton(
          onTap: () {
            model.setTime(pickedTime: '2:00 PM');
            setState(() {
              selectedIndex = 5;
            });
          },
          selected: selectedIndex == 5,
          title: '2:00 PM',
        ),
        HomeTimeButton(
          onTap: () {
            model.setTime(pickedTime: '3:00 PM');
            setState(() {
              selectedIndex = 6;
            });
          },
          selected: selectedIndex == 6,
          title: '3:00 PM',
        ),
        HomeTimeButton(
          onTap: () {
            model.setTime(pickedTime: '4:00 PM');
            setState(() {
              selectedIndex = 7;
            });
          },
          selected: selectedIndex == 7,
          title: '4:00 PM',
        ),
        HomeTimeButton(
          onTap: () {
            model.setTime(pickedTime: '5:00 PM');
            setState(() {
              selectedIndex = 8;
            });
          },
          selected: selectedIndex == 8,
          title: '5:00 PM',
        ),
      ];
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
                    percent: 0.65,
                    backgroundColor: Colors.grey,
                    progressColor: Color.fromRGBO(49, 185, 228, 1),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: SvgPicture.asset(
                          'assets/images/datetime_icon.svg',
                        )),
                  ),
                  SizedBox(
                    width: queryData.size.width - 30,
                    height: 80,
                    child: GestureDetector(
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(
                                color: Color.fromRGBO(226, 226, 226, 1))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.calendar_month_sharp,
                              color: Color.fromRGBO(129, 129, 129, 1),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 150,
                              child: TextField(
                                readOnly: true,
                                controller: dateInput,
                                onTap: () {
                                  DatePicker.showDatePicker(context,
                                      showTitleActions: true,
                                      onConfirm: (date) {
                                    setState(() {
                                      dateInput.text =
                                          DateFormat.yMd('en_US').format(date);
                                      model.setDate(pickedDate: dateInput.text);
                                    });
                                  });
                                },
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter Date',
                                    hintStyle: TextStyle(
                                        color: Color.fromRGBO(129, 129, 129, 1),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Palanquin')),
                                style: TextStyle(
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
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                    child: Wrap(children: list, runSpacing: 15, spacing: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () {
                          print("Tapped Next");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const pickPayment(
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
