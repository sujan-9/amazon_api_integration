import 'dart:async';
import 'dart:ui';

class Debouncer {
  Timer? timer;

  run(VoidCallback action) {
    if (timer?.isActive ?? false) {
      timer!.cancel();
    }
    timer = Timer(
      const Duration(milliseconds: 500),
      action,
    );
  }
}
