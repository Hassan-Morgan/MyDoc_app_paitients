import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:my_doc_app_for_patients/core/injector/injections.dart';
import 'package:my_doc_app_for_patients/core/utils/app_routes.dart';
import 'package:my_doc_app_for_patients/core/utils/app_themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/utils/app_pref.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  configureDependencies();
  await Hive.initFlutter();
  runApp(Phoenix(
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: AppPref.appTheme,
      theme: lightAppTheme,
      darkTheme: darkAppTheme,
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      locale: AppPref.appLanguage,
      onGenerateRoute: appGeneratedRoute,
      initialRoute: AppRoutes.initialRoute,
    );
  }
}
