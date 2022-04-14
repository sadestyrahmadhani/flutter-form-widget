import 'package:flutter/material.dart';
import 'package:flutterforminput/pages/login.dart';
import 'package:flutterforminput/pages/register.dart';
import 'package:flutterforminput/pages/register_next.dart';
import 'package:flutterforminput/pages/forgot_password.dart';
import 'package:flutterforminput/pages/check_email.dart';
import 'package:flutterforminput/pages/reset_password.dart';
import 'package:flutterforminput/pages/reset_success.dart';

Map<String, WidgetBuilder> buildRoute(BuildContext context) {
  return {
    '/login': (context) => const LoginPage(),
    '/register': (context) => const RegisterPage(),
    '/halaman-setelah-daftar': (context) => const RegisterNext(),
    '/forgot-password': (context) => const ForgotPassword(),
    '/check-email': (context) => const CheckEmail(),
    '/reset-password': (context) => const ResetPassword(),
    '/reset-success': (context) => const ResetSuccess(),
  };
}
