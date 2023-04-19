import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

class HelpCenterRouters {
  static goToIndex() => Modular.to.navigate('/help-center${RoutersName.index}');
}

class RoutersName {
  static String index = "/";
}
