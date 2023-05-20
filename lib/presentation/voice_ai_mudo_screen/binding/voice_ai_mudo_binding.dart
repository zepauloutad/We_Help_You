import '../controller/voice_ai_mudo_controller.dart';
import 'package:get/get.dart';

class VoiceAiMudoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VoiceAiMudoController());
  }
}
