import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:melora/services/kv_store/kv_store.dart';
import 'package:melora/utils/platform.dart';
import 'package:window_manager/window_manager.dart';

class WindowSize {
  final double height;
  final double width;
  final bool maximized;

  WindowSize({
    required this.height,
    required this.width,
    required this.maximized,
  });

  factory WindowSize.fromJson(Map<String, dynamic> json) => WindowSize(
        height: json["height"],
        width: json["width"],
        maximized: json["maximized"],
      );

  Map<String, dynamic> toJson() => {
        "height": height,
        "width": width,
        "maximized": maximized,
      };
}

class WindowManagerTools with WidgetsBindingObserver {
  static WindowManagerTools? _instance;
  static WindowManagerTools get instance => _instance!;

  WindowManagerTools._();

  static Future<void> initialize() async {
    await windowManager.ensureInitialized();
    _instance = WindowManagerTools._();
    WidgetsBinding.instance.addObserver(instance);

    windowManager.waitUntilReadyToShow(
      const WindowOptions(
        title: "Melora",
        size: Size(1280, 800),
        minimumSize: Size(400, 700),
        titleBarStyle: TitleBarStyle.normal,
        center: true,
        skipTaskbar: false,
      ),
      () async {
        await windowManager.setResizable(true);
        await windowManager.setSize(const Size(1280, 800));
        await windowManager.center();
        await windowManager.show();
        await windowManager.focus();
      },
    );

    await windowManager.setSize(const Size(1280, 800));
    await windowManager.center();
    await windowManager.show();
    await windowManager.focus();
    await windowManager.focus();
  }

  Size? _prevSize;

  @override
  void didChangeMetrics() async {
    super.didChangeMetrics();
    if (kIsMobile) return;
    final size = await windowManager.getSize();
    final windowSameDimension =
        _prevSize?.width == size.width && _prevSize?.height == size.height;

    if (windowSameDimension || _prevSize == null) {
      _prevSize = size;
      return;
    }
    final isMaximized = await windowManager.isMaximized();
    await KVStoreService.setWindowSize(
      WindowSize(
        height: size.height,
        width: size.width,
        maximized: isMaximized,
      ),
    );
    _prevSize = size;
  }
}
