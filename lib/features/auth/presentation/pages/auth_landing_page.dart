import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_doc_app_for_patients/core/utils/app_colors.dart';
import 'package:my_doc_app_for_patients/core/utils/app_routes.dart';
import 'package:my_doc_app_for_patients/features/auth/presentation/logic/init_cubit/init_page_cubit.dart';

class AuthLandingPage extends StatelessWidget {
  const AuthLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthInitPageCubit, AuthInitPageState>(
      listener: (context, state) {
        state.whenOrNull(
          successState: (currentUser) => Navigator.of(context)
              .pushReplacementNamed(AppRoutes.homePageRoute),
          errorState: (failure) => failure.maybeWhen(
            orElse: () => Navigator.of(context)
                .pushReplacementNamed(AppRoutes.authPageRoute),
            unverifiedEmail: () => Navigator.of(context)
                .pushReplacementNamed(AppRoutes.verifyEmailPageRoute),
            uncompletedAccount: () => Navigator.of(context)
                .pushReplacementNamed(AppRoutes.setUserinfoPageRoute),
          ),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: AppColors.primaryBlueColor,
          ),
        ),
      ),
    );
  }
}
