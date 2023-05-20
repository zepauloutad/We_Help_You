import '../controller/contactos_controller.dart';
import 'package:get/get.dart';

class ContactosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactosController());
  }
}
