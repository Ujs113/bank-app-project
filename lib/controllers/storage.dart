import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class StoreController extends GetxController {
  RxString username = ''.obs;
  RxString uid = ''.obs;

  updateUser(User us) {
    username(us.displayName);
    uid(us.uid);
  }
}