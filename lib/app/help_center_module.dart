// ignore_for_file: depend_on_referenced_packages

import 'package:flut_micro_app_help_center/app/help_center_routers.dart';
import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
import 'package:flutter/material.dart';

class HelpCenterModule extends Module {
  @override
  final List<Bind> binds = [
    // Controllers
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      RoutersName.index,
      child: (_, args) => Container(),
      transition: TransitionType.noTransition,
    ),
  ];
}
