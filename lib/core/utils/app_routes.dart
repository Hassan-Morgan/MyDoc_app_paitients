import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_doc_app_for_patients/core/injector/injections.dart';
import 'package:my_doc_app_for_patients/features/auth/presentation/pages/auth_page.dart';
import 'package:my_doc_app_for_patients/features/auth/presentation/pages/reset_password_page.dart';

import '../../features/auth/presentation/logic/auth_page_bloc/auth_bloc.dart';
import '../../features/auth/presentation/logic/init_cubit/init_page_cubit.dart';
import '../../features/auth/presentation/logic/reset_password_cubit/reset_password_cubit.dart';
import '../../features/init_app_pref/presentation/logic/cubit/app_pref_cubit.dart';
import '../../features/init_app_pref/presentation/pages/intial_page.dart';

class AppRoutes {
  static const String initialRoute = '/';
  static const String authPageRoute = '/authPage';
  static const String homePageRoute = '/homePage';
  static const String resetPasswordPageRoute = '/resetPasswordPage';
}

Route appGeneratedRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.resetPasswordPageRoute:
      return MaterialPageRoute(
          builder: (context) => BlocProvider(
                create: (context) => getIt<ResetPasswordCubit>(),
                child: ResetPasswordPage(),
              ));
    case AppRoutes.homePageRoute:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
              child: ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            child: Text('signout'),
          )),
        ),
      );
    case AppRoutes.authPageRoute:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => getIt<AuthBloc>(),
          child: AuthPage(),
        ),
      );
    case AppRoutes.initialRoute:
    default:
      return MaterialPageRoute(
        builder: (context) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<AppPrefCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<AuthInitPageCubit>()..getCurrentUser(),
            ),
          ],
          child: const InitialPage(),
        ),
      );
  }
}
