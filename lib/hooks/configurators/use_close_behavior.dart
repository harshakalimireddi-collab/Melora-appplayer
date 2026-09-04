import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:melora/hooks/configurators/use_window_listener.dart';
import 'package:melora/models/database/database.dart';
import 'package:melora/provider/user_preferences/user_preferences_provider.dart';
import 'package:melora/services/audio_player/audio_player.dart';

import 'package:local_notifier/local_notifier.dart';
import 'package:melora/utils/platform.dart';
import 'package:tray_manager/tray_manager.dart';
import 'package:window_manager/window_manager.dart';

/// Instantly closes the desktop app cleanly with zero glitch or lag
Future<void> smoothlyTerminateApp() async {
  if (kIsDesktop) {
    try {
      // 1. Immediately hide window for 0ms visual feedback
      await windowManager.hide();
    } catch (_) {}
    try {
      // 2. Stop audio engine & release WASAPI/directsound hardware locks
      await audioPlayer.stop();
    } catch (_) {}
    try {
      // 3. Destroy tray icon cleanly
      await trayManager.destroy();
    } catch (_) {}
    try {
      // 4. Destroy Win32 window cleanly to break message loop
      await windowManager.destroy();
    } catch (_) {}
  }
  exit(0);
}

final closeNotification = !kIsDesktop
    ? null
    : (LocalNotification(
        title: 'Melora',
        body: 'Running in background. Minimized to System Tray',
        actions: [
          LocalNotificationAction(text: 'Close The App'),
        ],
      )..onClickAction = (value) {
        smoothlyTerminateApp();
      });

void useCloseBehavior(WidgetRef ref) {
  useWindowListener(
    onWindowClose: () async {
      final preferences = ref.read(userPreferencesProvider);
      if (preferences.closeBehavior == CloseBehavior.minimizeToTray) {
        await windowManager.hide();
        closeNotification?.show();
      } else {
        await smoothlyTerminateApp();
      }
    },
  );
}
