import 'package:sign_language_recognition/services/tts_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/bluetooth_service.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/serial/serial_view.dart';
import '../ui/views/startup/startup_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView, path: '/home'),
    MaterialRoute(page: SerialView, path: '/serial'),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    Singleton(classType: BluetoothService),
    LazySingleton(classType: TTSService),
    // LazySingleton(classType: BaseService),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
