import 'package:ecommercecourse/core/constant/routesname.dart';
import 'package:ecommercecourse/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
};
