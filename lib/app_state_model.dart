import 'package:flutter/foundation.dart' as foundation;

class AppStateModel extends foundation.ChangeNotifier {
  void initialize() {
    //
  }

  String authToken = '';
  dynamic service;
  dynamic car;
  dynamic time;
  dynamic payment;
  dynamic date;
  dynamic address;

  dynamic get getService {
    return service;
  }

  setAuthToken(String token) {
    authToken = 'Bearer $token';
    notifyListeners();
  }

  setService({required String pickedService}) {
    service = pickedService;
    print(service);
    notifyListeners();
  }

  setCar({required String pickedCar}) {
    car = pickedCar;
    print(car);
    notifyListeners();
  }

  setTime({required String pickedTime}) {
    time = pickedTime;
    print(time);
    notifyListeners();
  }

  setPayment({required String pickedPayment}) {
    payment = pickedPayment;
    print(payment);
    notifyListeners();
  }

  setDate({required String pickedDate}) {
    date = pickedDate;
    print(date);
    notifyListeners();
  }

  setAddress({required String pickedAddress}) {
    address = pickedAddress;
    print(address);
    notifyListeners();
  }
}
