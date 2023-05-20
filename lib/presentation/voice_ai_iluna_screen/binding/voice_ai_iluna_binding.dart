import '../controller/voice_ai_iluna_controller.dart';
import 'package:get/get.dart';

class VoiceAiIlunaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VoiceAiIlunaController());
  }
}
