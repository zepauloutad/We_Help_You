import '../controller/editar_controller.dart';
import 'package:get/get.dart';

class EditarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditarController());
  }
}
