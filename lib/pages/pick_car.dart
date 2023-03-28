import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tap2wash/components/sidebar.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/pages/pick_location.dart';

import '../app_state_model.dart';
import '../components/home_car_button.dart';

class picKCar extends StatelessWidget {
  const picKCar({super.key});

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

class pickCar extends StatefulWidget {
  const pickCar({super.key, required this.title});

  final String title;

  @override
  State<pickCar> createState() => _pickCar();
}

class _pickCar extends State<pickCar> {
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
        HomeCarButton(
          onTap: () {
            model.setCar(pickedCar:'SUV');
            setState(() {
              selectedIndex = 0;
              Text(model.car.toString());
            });
          },
          selected: selectedIndex == 0,
          icon: Icon(Icons.car_rental),
          title: 'SUV',
        ),
        HomeCarButton(
          onTap: () {
            model.setCar(pickedCar:'Sedan');
            setState(() {
              selectedIndex = 1;
              Text(model.car.toString());
            });
          },
          selected: selectedIndex == 1,
          icon: Icon(Icons.car_repair),
          title: 'Sedan',
        ),
        HomeCarButton(
          onTap: () {
            model.setCar(pickedCar:'Truck');
            setState(() {
              selectedIndex = 2;
              Text(model.car.toString());
            });
          },
          selected: selectedIndex == 2,
          icon: Icon(Icons.fire_truck_outlined),
          title: 'Truck',
        ),
        HomeCarButton(
          onTap: () {
            model.setCar(pickedCar:'Motorcycle');
            setState(() {
              selectedIndex = 3;
              Text(model.car.toString());
            });
          },
          selected: selectedIndex == 3,
          icon: Icon(Icons.motorcycle_outlined),
          title: 'Motorcycle',
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
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, top: 50),
                      child: const Text(
                        'Pick car type: ',
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
                  Wrap(
                    children: list,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("Tapped Next");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                              const pickLocation(title: 'Tap2Wash')));
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


