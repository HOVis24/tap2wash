import 'package:flutter/material.dart';
import 'package:tap2wash/app_state_model.dart';
import 'package:tap2wash/main.dart';
import 'package:tap2wash/pages/pick_date.dart';
import 'package:place_picker/place_picker.dart';
import '../components/sidebar.dart';
import 'package:provider/provider.dart';

class picKLocation extends StatelessWidget {
  const picKLocation({super.key});

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


    return Consumer<AppStateModel>(builder: (context, model, child){

      void showPlacePicker() async {
        LocationResult? result = await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => PlacePicker("AIzaSyDiwjpaj_nJk_b2Lln0w3onLIw8U_PvbFo", )));
        print(result!.formattedAddress.toString());
        print(result.latLng.toString());
        locInput.text = result.formattedAddress.toString();
        model.setAddress(pickedAddress: locInput.text);
      }

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
                      'Select location:',
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
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: <Widget>[
                //     Card(
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(15.0),
                //       ),
                //       color: const Color.fromRGBO(244, 243, 243, 1),
                //       child: SizedBox(
                //           width: 355,
                //           height: 40,
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //             children: const <Widget>[
                //               SizedBox(),
                //               Icon(Icons.search_sharp),
                //               SizedBox(),
                //               Text(
                //                 '2010 Piy Margal St., Sampaloc, Manila',
                //                 textAlign: TextAlign.center,
                //                 style: TextStyle(
                //                     decoration: TextDecoration.none,
                //                     fontFamily: 'Palanquin',
                //                     fontWeight: FontWeight.w600,
                //                     color: Colors.black,
                //                     fontSize: 15),
                //               ),
                //               SizedBox(),
                //             ],
                //           )),
                //     ),
                //   ],
                // ),
                SizedBox(
                  width: queryData.size.width - 30,
                  height: 80,
                  child: GestureDetector(
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color.fromRGBO(226, 226, 226, 1)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.pin_drop_outlined,
                            color: Color.fromRGBO(129, 129, 129, 1),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 300,
                            child: TextField(
                              readOnly: true,
                              controller: locInput,
                              onTap: (){
                                showPlacePicker();

                                // setState(() {
                                //   model.setAddress(pickedAddress: locInput.text);
                                //   print(locInput);
                                // });
                              },

                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText:  'Pickup Point:',
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(129, 129, 129, 1),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'Lato-Thin'
                                  )
                              ),
                              style: TextStyle(
                                  color: Color.fromRGBO(129, 129, 129, 1),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Lato-Thin'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Tapped Next");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const pickDate(
                                  title: 'Tap2Wash',
                                )));
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
  });}
}
