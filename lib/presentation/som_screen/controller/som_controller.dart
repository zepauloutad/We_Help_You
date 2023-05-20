import 'package:we_help_you/core/app_export.dart';
import 'package:we_help_you/presentation/som_screen/models/som_model.dart';

class SomController extends GetxController {
  Rx<SomModel> somModelObj = SomModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
