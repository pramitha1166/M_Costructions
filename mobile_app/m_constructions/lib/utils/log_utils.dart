import 'dart:developer' as dev;
import 'package:m_constructions/utils/config.dart';

class LogUtils {
  LogUtils({
    required this.featureName,
    required this.printLog,
  });

  final bool printLog;
  final String featureName;

  void log(Object log) {
    if (printLog && Config.printLog && Config.isDebugMode) {
      dev.log("LOG :: $featureName :: $log");
    }
  }
}
