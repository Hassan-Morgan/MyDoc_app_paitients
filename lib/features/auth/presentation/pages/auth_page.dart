import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_doc_app_for_patients/core/presentation/shared_widgets/custom_dialog_widget.dart';
import 'package:my_doc_app_for_patients/core/presentation/shared_widgets/loading_widget.dart';
import 'package:my_doc_app_for_patients/core/utils/app_assets.dart';
import 'package:my_doc_app_for_patients/core/utils/app_enums.dart';
import 'package:my_doc_app_for_patients/core/utils/app_routes.dart';
import 'package:my_doc_app_for_patients/features/auth/presentation/logic/auth_page_bloc/auth_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/auth_form.dart';
import '../widgets/social_media_auth_buttons.dart';

class AuthPage extends StatelessWidget {
  AuthPage({Key? key}) : super(key: key);

  final emailFormKey = GlobalKey<FormState>();
  final passwordFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final appLan = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.authSuccessOrFailure.fold(
          () => null,
          (a) => a.fold(
            (l) {
              l.whenOrNull(
                networkFailure: () => showDialog(
                  context: context,
                  builder: (context) => CustomDialog(
                    title: appLan.network_failure_title,
                    message: appLan.network_failure_message,
                  ),
                ),
                incorrectEmailOrPassword: () => showDialog(
                  context: context,
                  builder: (context) => CustomDialog(
                    title: appLan.auth_failure_title,
                    message: appLan.auth_failure_message_invalid_inputs,
                  ),
                ),
                emailAlreadyRegistered: () => showDialog(
                  context: context,
                  builder: (context) => CustomDialog(
                    title: appLan.auth_failure_title,
                    message: appLan.auth_failure_message_already_registered,
                  ),
                ),
                canecledByUser: () => showDialog(
                  context: context,
                  builder: (context) => CustomDialog(
                    title: appLan.auth_failure_title,
                    message: appLan.auth_failure_message_canceld_by_user,
                  ),
                ),
                serverError: () => showDialog(
                  context: context,
                  builder: (context) => CustomDialog(
                    title: appLan.server_failure_title,
                    message: appLan.server_failure_message,
                  ),
                ),
              );
            },
            (r) => Navigator.pushReplacementNamed(
              context,
              AppRoutes.initialRoute,
            ),
          ),
        );
      },
      builder: (context, state) {
        final bloc = BlocProvider.of<AuthBloc>(context);
        return Stack(
          children: [
            Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.3,
                          child: SvgPicture.asset(AppAssets.appIcon),
                        ),
                        Text(
                          state.authPage == AuthPagesEnum.signInPage
                              ? appLan.sign_in_header_message
                              : appLan.sing_up_header_message,
                          style: textTheme.headline1,
                        ),
                        const SizedBox(height: 16.0),
                        AuthForm(
                          bloc: bloc,
                          emailFormKey: emailFormKey,
                          passwordFormKey: passwordFormKey,
                        ),
                        ElevatedButton(
                          onPressed: state.isEmailValid && state.isPasswordValid
                              ? () {
                                  state.authPage == AuthPagesEnum.signInPage
                                      ? bloc.add(const AuthEvent
                                          .signInWithEmailAndPassword())
                                      : bloc.add(const AuthEvent
                                          .registerWithEmailAndPassword());
                                }
                              : null,
                          child: Text(
                            state.authPage == AuthPagesEnum.signInPage
                                ? appLan.sign_in
                                : appLan.sign_up,
                          ),
                        ),
                        const SizedBox(height: 18.0),
                        SocialMediaAuthForm(
                          bloc: bloc,
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              state.authPage == AuthPagesEnum.signInPage
                                  ? appLan.have_no_account_message
                                  : appLan.have_account_message,
                              style: textTheme.subtitle1,
                            ),
                            TextButton(
                              onPressed: () {
                                emailFormKey.currentState!.reset();
                                passwordFormKey.currentState!.reset();
                                bloc.add(
                                    const AuthEvent.toggleBetweenAuthPages());
                              },
                              child: Text(
                                state.authPage == AuthPagesEnum.signInPage
                                    ? appLan.sign_up
                                    : appLan.sign_in,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (state.isLoading) const LoadingWidget(),
          ],
        );
      },
    );
  }
}
