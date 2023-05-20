import '../controller/principal_controller.dart';
import 'package:get/get.dart';

class PrincipalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrincipalController());
  }
}
