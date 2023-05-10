import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tap2wash/components/user_ongoing_orders.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/pages/pick_service.dart';
import 'package:tap2wash/pages/user_profile.dart';

import '../components/sidebar.dart';

void main() {
  runApp(const MyApp());
}

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
      home: const bookingHistory(title: 'Tap2Wash'),
    );
  }
}

class bookingHistory extends StatefulWidget {
  const bookingHistory({super.key, required this.title});

  final String title;

  @override
  State<bookingHistory> createState() => _bookingHistoryState();
}

class _bookingHistoryState extends State<bookingHistory> {
  late MediaQueryData queryData;
  int selectedIndex = 0; // This is for the list
  int _selectedIndex = 0; // This is for the bottom nav bar

  List<Widget> ongoingorders = [
    OnGoingOrders(
        date: '3/7/2023',
        time: '4:00 PM',
        location: '2010 Piy Margal St., Sampaloc, Manila',
        service: 'Full Wash',
        car: 'SUV',
        status: 'Ongoing',
        payment: 'GCash'),
    OnGoingOrders(
        date: '3/4/2023',
        time: '3:00 PM',
        location: 'Mezza II Residences, Guirayan St., Quezon City',
        service: 'Light Wash',
        car: 'SUV',
        status: 'Ongoing',
        payment: 'GCash')
  ];
  List<Widget> doneorders = [
    OnGoingOrders(
        date: '3/02/2023',
        time: '1:00 PM',
        location: 'Mezza II Residences, Guirayan St., Quezon City',
        service: 'Tire Maintenance',
        car: 'SUV',
        status: 'Done',
        payment: 'GCash'),
    OnGoingOrders(
        date: '2/24/2023',
        time: '9:00 AM',
        location: '2010 Piy Margal St., Sampaloc, Manila',
        service: 'Full Wash',
        car: 'Truck',
        status: 'Done',
        payment: 'Cash'),
    OnGoingOrders(
        date: '2/11/2023',
        time: '2:00 PM',
        location: 'Mezza II Residences, Guirayan St., Quezon City',
        service: 'Interior Cleaning',
        car: 'Sedan',
        status: 'Done',
        payment: 'Cash'),
    OnGoingOrders(
        date: '2/01/2023',
        time: '11:00 PM',
        location: '2010 Piy Margal St., Sampaloc, Manila',
        service: 'Light Wash',
        car: 'SUV',
        status: 'Done',
        payment: 'GCash'),
    OnGoingOrders(
        date: '1/15/2023',
        time: '8:00 AM',
        location: 'Mezza II Residences, Guirayan St., Quezon City',
        service: 'Tire Maintenance',
        car: 'Motorcycle',
        status: 'Done',
        payment: 'Bank Transfer'),
  ];
  List<Widget> cancelledorders = [
    OnGoingOrders(
        date: '2/07/2022',
        time: '10:00 AM',
        location: 'Mezza II Residences, Guirayan St., Quezon City',
        service: 'Full Wash',
        car: 'SUV',
        status: 'Cancelled',
        payment: 'GCash'),
    OnGoingOrders(
        date: '1/12/2023',
        time: '3:00 PM',
        location: '2010 Piy Margal St., Sampaloc, Manila',
        service: 'Interior Cleaning',
        car: 'Truck',
        status: 'Cancelled',
        payment: 'GCash'),
    OnGoingOrders(
        date: '11/30/2023',
        time: '6:00 PM',
        location: 'Mezza II Residences, Guirayan St., Quezon City',
        service: 'Tire Maintenance',
        car: 'Motorcycle',
        status: 'Cancelled',
        payment: 'Bank Transfer'),
  ];

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
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
            bottom: const TabBar(
                indicatorColor: Color.fromRGBO(49, 185, 228, 1),
                unselectedLabelColor: Color.fromRGBO(49, 185, 228, 1),
                labelColor: Color.fromRGBO(49, 185, 228, 1),
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.today,
                    ),
                    text: 'Ongoing',
                  ),
                  Tab(
                    icon: Icon(Icons.done_all_rounded),
                    text: 'Successful',
                  ),
                  Tab(
                    icon: Icon(Icons.cancel_rounded),
                    text: 'Cancelled',
                  ),
                ]),
          ),
          drawer: Drawer(
            child: SideBar(),
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: queryData.size.width - 30,
                height: queryData.size.height,
                child: TabBarView(children: [
                  Wrap(children: ongoingorders),
                  Wrap(children: doneorders),
                  Wrap(children: cancelledorders),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
