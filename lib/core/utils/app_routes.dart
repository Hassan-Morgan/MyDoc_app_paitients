import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_doc_app_for_patients/core/injector/injections.dart';
import 'package:my_doc_app_for_patients/features/auth/presentation/pages/auth_landing_page.dart';

import '../../features/init_app_pref/presentation/logic/cubit/app_pref_cubit.dart';
import '../../features/init_app_pref/presentation/pages/intial_page.dart';

class AppRoutes {
  static const String initialRoute = '/';
  static const String authLandingPage = '/authLandingPage';
}

Route appGeneratedRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.authLandingPage:
      return MaterialPageRoute(
        builder: (context) => const AuthLandingPage(),
      );
    case AppRoutes.initialRoute:
    default:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => getIt<AppPrefCubit>(),
          child: const InitialPage(),
        ),
      );
  }
}
