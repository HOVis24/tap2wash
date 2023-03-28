import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tap2wash/components/home_time_button.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/pages/pick_payment.dart';

import '../app_state_model.dart';
import '../components/sidebar.dart';

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

class pickTime extends StatefulWidget {
  const pickTime({super.key, required this.title});

  final String title;

  @override
  State<pickTime> createState() => _pickTime();
}

class _pickTime extends State<pickTime> {
  late MediaQueryData queryData;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    var model = Provider.of<AppStateModel>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Consumer<AppStateModel>(builder: (context, model, child){
    List<Widget> list = [
      HomeTimeButton(
        onTap: () {
          model.setTime(pickedTime:'9:00 AM');
          setState(() {
            selectedIndex = 0;
          });
        },
        selected: selectedIndex == 0,
        title: '9:00 AM',
      ),
      HomeTimeButton(
        onTap: () {
          model.setTime(pickedTime:'10:00 AM');
          setState(() {
            selectedIndex = 1;
          });
        },
        selected: selectedIndex == 1,
        title: '10:00 AM',
      ),
      HomeTimeButton(
        onTap: () {
          model.setTime(pickedTime:'11:00 AM');
          setState(() {
            selectedIndex = 2;
          });
        },
        selected: selectedIndex == 2,
        title: '11:00 AM',
      ),
      HomeTimeButton(
        onTap: () {
          model.setTime(pickedTime:'12:00 PM');
          setState(() {
            selectedIndex = 3;
          });
        },
        selected: selectedIndex == 3,
        title: '12:00 PM',
      ),
      HomeTimeButton(
        onTap: () {
          model.setTime(pickedTime:'1:00 PM');
          setState(() {
            selectedIndex = 4;
          });
        },
        selected: selectedIndex == 4,
        title: '1:00 PM',
      ),
      HomeTimeButton(
        onTap: () {
          model.setTime(pickedTime:'2:00 PM');
          setState(() {
            selectedIndex = 5;
          });
        },
        selected: selectedIndex == 5,
        title: '2:00 PM',
      ),
      HomeTimeButton(
        onTap: () {
          model.setTime(pickedTime:'3:00 PM');
          setState(() {
            selectedIndex = 6;
          });
        },
        selected: selectedIndex == 6,
        title: '3:00 PM',
      ),
      HomeTimeButton(
        onTap: () {
          model.setTime(pickedTime:'4:00 PM');
          setState(() {
            selectedIndex = 7;
          });
        },
        selected: selectedIndex == 7,
        title: '4:00 PM',
      ),
      HomeTimeButton(
        onTap: () {
          model.setTime(pickedTime:'5:00 PM');
          setState(() {
            selectedIndex = 8;
          });
        },
        selected: selectedIndex == 8,
        title: '5:00 PM',
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
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, top: 50),
                    child: const Text(
                      'Select time:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Palanquin',
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(49, 185, 228, 1),
                          fontSize: 40),
                    ),
                  ),
                ),
                Wrap(children: list, runSpacing: 10, spacing: 10),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Tapped Next");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const pickPayment(title: 'Tap2Wash')));
                      },
                      child: Card(
                        margin: const EdgeInsets.only(right: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: const Color.fromRGBO(49, 185, 228, 1),
                        child: SizedBox(
                            width: 100,
                            height: 40,
                            child: Row(
                              children: const <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.play_arrow_sharp,
                                  color: Colors.white,
                                ),
                                Text(
                                  'NEXT',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Palanquin',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ));
  });
}
}