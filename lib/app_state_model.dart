import 'package:flutter/foundation.dart' as foundation;

class AppStateModel extends foundation.ChangeNotifier {
  void initialize() {
    //
  }

  String authToken = '';
  dynamic testData = 0;

  setAuthToken(String token) {
    authToken = 'Bearer $token';
    notifyListeners();
  }

  setTestData(){
    testData++;
    print(testData);
    notifyListeners();
  }
}
