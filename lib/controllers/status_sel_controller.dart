import 'package:get/get.dart';

class StatusSelectController extends GetxController {
  var sel = [false, false, false, false].obs;

  void check(int i) {
    for (int j = 0; j < sel.length; j += 1) {
      sel[j] = false;
    }
    sel[i] = true;
  }
}