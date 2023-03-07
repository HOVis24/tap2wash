import 'package:flutter/material.dart';
import 'package:tap2wash/components/user_ongoing_orders.dart';

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
  int selectedIndex = 0;

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
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            backgroundColor: const Color.fromRGBO(49, 185, 228, 1),
            toolbarHeight: 70,
            title: Text('Booking History'),
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

            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.today),
              ),
              Tab(
                icon: Icon(Icons.done_all_rounded),
              ),
              Tab(
                icon: Icon(Icons.cancel_rounded),
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
                width: 400,
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
