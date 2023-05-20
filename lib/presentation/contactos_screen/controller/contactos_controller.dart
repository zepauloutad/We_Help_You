import 'package:we_help_you/core/app_export.dart';
import 'package:we_help_you/presentation/contactos_screen/models/contactos_model.dart';

class ContactosController extends GetxController {
  Rx<ContactosModel> contactosModelObj = ContactosModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
