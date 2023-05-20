import '../controller/efetuar_chamadas_controller.dart';
import 'package:get/get.dart';

class EfetuarChamadasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EfetuarChamadasController());
  }
}
