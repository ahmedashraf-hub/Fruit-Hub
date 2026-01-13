import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruit_hub/core/helper_functoins/on_generate_routes.dart';
import 'package:fruit_hub/core/services/prefs.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/features/splash/presentation/views/splash_view.dart';
import 'package:fruit_hub/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();

  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
      ),

      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),

      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
