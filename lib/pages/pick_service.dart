import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/pages/pick_car.dart';
import 'package:tap2wash/pages/user_profile.dart';

import '../app_state_model.dart';
import '../components/home_service_button.dart';
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

class pickService extends StatefulWidget {
  const pickService({super.key, required this.title});

  final String title;

  @override
  State<pickService> createState() => _pickService();
}

class _pickService extends State<pickService> {
  late MediaQueryData queryData;

  //This is for the service buttons!
  int selectedIndex = 0;

  //This is for the BottomNavBar routes!
  int _selectedIndex = 1;

  @override
  void initState() {
    super.initState();
    var model = Provider.of<AppStateModel>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    return Consumer<AppStateModel>(builder: (context, model, child) {
      List<Widget> list = [
        HomeServiceButton(
          key: const Key('FullWash'),
          onTap: () {
            model.setService(pickedService: 'Full Wash');
            setState(() {
              selectedIndex = 0;
              Text(model.service.toString());
            });
          },
          selected: selectedIndex == 0,
          icon: const Icon(Icons.local_car_wash_rounded),
          title: 'Full Wash',
          summary: 'Lorem IO',
          price: '500',
        ),
        HomeServiceButton(
          onTap: () {
            model.setService(pickedService: 'Light Wash');
            setState(() {
              selectedIndex = 1;
              Text(model.service.toString());
            });
          },
          selected: selectedIndex == 1,
          icon: const Icon(Icons.wash_rounded),
          title: 'Light Wash',
          summary: 'Lorem IO',
          price: '300',
        ),
        HomeServiceButton(
          onTap: () {
            model.setService(pickedService: 'Interior Cleaning');
            setState(() {
              selectedIndex = 2;
              Text(model.service.toString());
            });
          },
          selected: selectedIndex == 2,
          icon: const Icon(Icons.cleaning_services_rounded),
          title: 'Interior Cleaning',
          summary: 'Lorem IO',
          price: '200',
        ),
        HomeServiceButton(
          onTap: () {
            model.setService(pickedService: 'Tire Maintenance');
            setState(() {
              selectedIndex = 3;
              Text(model.service.toString());
            });
          },
          selected: selectedIndex == 3,
          icon: const Icon(Icons.tire_repair_rounded),
          title: 'Tire Maintenance',
          summary: 'Lorem IO',
          price: '1000',
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
                children: [
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
                    percent: 0.15,
                    backgroundColor: Colors.grey,
                    progressColor: Color.fromRGBO(49, 185, 228, 1),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: SvgPicture.asset(
                          'assets/images/service_icon.svg',
                        )),
                  ),
                  Wrap(
                    runSpacing: 5,
                    children: list,
                    spacing: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () {
                          print("Tapped Next");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const pickCar(
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
