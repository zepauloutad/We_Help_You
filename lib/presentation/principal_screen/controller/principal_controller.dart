import 'package:we_help_you/core/app_export.dart';
import 'package:we_help_you/presentation/principal_screen/models/principal_model.dart';

class PrincipalController extends GetxController {
  Rx<PrincipalModel> principalModelObj = PrincipalModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.efetuarChamadasScreen,
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
