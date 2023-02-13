// ignore_for_file: depend_on_referenced_packages

import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';

class HelpCenterRouters {
  static goToIndex() => Modular.to.navigate('/help-center${RoutersName.index}');
}

class RoutersName {
  static String index = "/";
}
