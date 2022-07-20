import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_doc_app_for_patients/core/utils/app_data.dart';
import 'package:my_doc_app_for_patients/core/utils/app_routes.dart';
import 'package:my_doc_app_for_patients/core/utils/app_themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightAppTheme,
      darkTheme: darkAppTheme,
      themeMode: AppData.appTheme,
      locale: AppData.appLanguage,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      onGenerateRoute: appGeneratedRoute,
      initialRoute: AppRoutes.initialRoute,
    );
  }
}
