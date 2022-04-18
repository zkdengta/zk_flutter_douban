
import 'package:logger/logger.dart';

class LoggerUtil {
  LoggerUtil.v(dynamic v) {
    Logger().v(v);
  }

  /// 调试
  LoggerUtil.d(dynamic d, {dynamic tag}) {
      Logger().d(d, tag);
  }

  /// 信息
  LoggerUtil.i(dynamic i, {dynamic tag}) {
    Logger().i(i, tag);
  }

  /// 错误
  LoggerUtil.e(dynamic e, {dynamic tag}) {
    Logger().e(e, tag);
  }

  /// 警告
  LoggerUtil.w(dynamic w) {
    Logger().w(w);
  }

  /// WTF
  LoggerUtil.wtf(dynamic wtf) {
    Logger().wtf(wtf);
  }
}
