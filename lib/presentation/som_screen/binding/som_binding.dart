import '../controller/som_controller.dart';
import 'package:get/get.dart';

class SomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SomController());
  }
}
