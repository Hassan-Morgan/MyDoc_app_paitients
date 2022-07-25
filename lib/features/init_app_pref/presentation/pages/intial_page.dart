import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:my_doc_app_for_patients/features/auth/presentation/logic/init_cubit/init_page_cubit.dart';
import 'package:my_doc_app_for_patients/features/init_app_pref/presentation/logic/cubit/app_pref_cubit.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../../auth/presentation/pages/auth_landing_page.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppPrefCubit, AppPrefStates>(
      listener: (context, state) {
        if (state.finishGetAppLanguage && state.finishGetAppTheme) {
          FlutterNativeSplash.remove();
          Phoenix.rebirth(context);
        }
      },
      builder: (context, state) {
        if (state.finishGetAppLanguage && state.finishGetAppTheme) {
          return BlocProvider.value(
            value: BlocProvider.of<AuthInitPageCubit>(context),
            child: const AuthLandingPage(),
          );
        } else {
          return const Scaffold();
        }
      },
    );
  }
}
