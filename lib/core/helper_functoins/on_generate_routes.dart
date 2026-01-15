import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/views/check_code_view.dart';
import 'package:fruit_hub/features/auth/presentation/views/forgot_password_view.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruit_hub/features/auth/presentation/views/signup_view.dart';
import 'package:fruit_hub/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruit_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnboardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());
    case ForgotPasswordView.routeName:
      return MaterialPageRoute(
        builder: (context) => const ForgotPasswordView(),
      );
    case CheckCodeView.routeName:
      return MaterialPageRoute(builder: (context) => const CheckCodeView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
