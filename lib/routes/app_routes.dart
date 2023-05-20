import 'package:we_help_you/presentation/principal_screen/principal_screen.dart';
import 'package:we_help_you/presentation/principal_screen/binding/principal_binding.dart';
import 'package:we_help_you/presentation/efetuar_chamadas_screen/efetuar_chamadas_screen.dart';
import 'package:we_help_you/presentation/efetuar_chamadas_screen/binding/efetuar_chamadas_binding.dart';
import 'package:we_help_you/presentation/editar_screen/editar_screen.dart';
import 'package:we_help_you/presentation/editar_screen/binding/editar_binding.dart';
import 'package:we_help_you/presentation/contactos_screen/contactos_screen.dart';
import 'package:we_help_you/presentation/contactos_screen/binding/contactos_binding.dart';
import 'package:we_help_you/presentation/contactos_emerg_ncia_screen/contactos_emerg_ncia_screen.dart';
import 'package:we_help_you/presentation/contactos_emerg_ncia_screen/binding/contactos_emerg_ncia_binding.dart';
import 'package:we_help_you/presentation/voice_ai_mudo_screen/voice_ai_mudo_screen.dart';
import 'package:we_help_you/presentation/voice_ai_mudo_screen/binding/voice_ai_mudo_binding.dart';
import 'package:we_help_you/presentation/voice_ai_iluna_screen/voice_ai_iluna_screen.dart';
import 'package:we_help_you/presentation/voice_ai_iluna_screen/binding/voice_ai_iluna_binding.dart';
import 'package:we_help_you/presentation/som_screen/som_screen.dart';
import 'package:we_help_you/presentation/som_screen/binding/som_binding.dart';
import 'package:we_help_you/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:we_help_you/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String principalScreen = '/principal_screen';

  static const String efetuarChamadasScreen = '/efetuar_chamadas_screen';

  static const String editarScreen = '/editar_screen';

  static const String contactosScreen = '/contactos_screen';

  static const String contactosEmergNciaScreen = '/contactos_emerg_ncia_screen';

  static const String voiceAiMudoScreen = '/voice_ai_mudo_screen';

  static const String voiceAiIlunaScreen = '/voice_ai_iluna_screen';

  static const String somScreen = '/som_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: principalScreen,
      page: () => PrincipalScreen(),
      bindings: [
        PrincipalBinding(),
      ],
    ),
    GetPage(
      name: efetuarChamadasScreen,
      page: () => EfetuarChamadasScreen(),
      bindings: [
        EfetuarChamadasBinding(),
      ],
    ),
    GetPage(
      name: editarScreen,
      page: () => EditarScreen(),
      bindings: [
        EditarBinding(),
      ],
    ),
    GetPage(
      name: contactosScreen,
      page: () => ContactosScreen(),
      bindings: [
        ContactosBinding(),
      ],
    ),
    GetPage(
      name: contactosEmergNciaScreen,
      page: () => ContactosEmergNciaScreen(),
      bindings: [
        ContactosEmergNciaBinding(),
      ],
    ),
    GetPage(
      name: voiceAiMudoScreen,
      page: () => VoiceAiMudoScreen(),
      bindings: [
        VoiceAiMudoBinding(),
      ],
    ),
    GetPage(
      name: voiceAiIlunaScreen,
      page: () => VoiceAiIlunaScreen(),
      bindings: [
        VoiceAiIlunaBinding(),
      ],
    ),
    GetPage(
      name: somScreen,
      page: () => SomScreen(),
      bindings: [
        SomBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => PrincipalScreen(),
      bindings: [
        PrincipalBinding(),
      ],
    )
  ];
}
