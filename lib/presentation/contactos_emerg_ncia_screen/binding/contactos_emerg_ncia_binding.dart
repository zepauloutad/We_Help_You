import '../controller/contactos_emerg_ncia_controller.dart';
import 'package:get/get.dart';

class ContactosEmergNciaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactosEmergNciaController());
  }
}
