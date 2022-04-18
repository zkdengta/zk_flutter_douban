
import 'package:zk_flutter_douban/common/http/apis.dart';

///  http配置
class HttpConfig{

  static String baseUrl = APIS.BASE_URL;


  static const connectTimeout = 15000;
  static const receiveTimeout = 15000;
  static const successCode = 200;
}