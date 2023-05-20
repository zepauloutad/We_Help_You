import 'package:we_help_you/core/app_export.dart';
import 'package:we_help_you/presentation/voice_ai_mudo_screen/models/voice_ai_mudo_model.dart';

class VoiceAiMudoController extends GetxController {
  Rx<VoiceAiMudoModel> voiceAiMudoModelObj = VoiceAiMudoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
