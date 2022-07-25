import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_doc_app_for_patients/core/utils/app_colors.dart';
import 'package:my_doc_app_for_patients/core/utils/app_enums.dart';
import 'package:my_doc_app_for_patients/core/utils/app_routes.dart';
import 'package:my_doc_app_for_patients/features/auth/presentation/logic/auth_page_bloc/auth_bloc.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({
    Key? key,
    required this.bloc,
    required this.emailFormKey,
    required this.passwordFormKey,
  }) : super(key: key);
  final AuthBloc bloc;
  final GlobalKey<FormState> emailFormKey;
  final GlobalKey<FormState> passwordFormKey;

  @override
  Widget build(BuildContext context) {
    final appLan = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 8.0),
          child: Text(
            appLan.email,
            style: textTheme.subtitle1,
          ),
        ),
        Form(
          key: emailFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) => bloc.add(AuthEvent.emailFieldChanged(value)),
            textInputAction: TextInputAction.next,
            onEditingComplete: () => FocusScope.of(context).nextFocus(),
            validator: (value) {
              if (value!.isEmpty) {
                return appLan.empty_email_validation_message;
              }
              if (!bloc.state.isEmailValid) {
                return appLan.email_validation_message;
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: appLan.email,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 8.0),
          child: Text(
            appLan.password,
            style: textTheme.subtitle1,
          ),
        ),
        Form(
          key: passwordFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: bloc.state.obsecurePassword,
            onChanged: (value) =>
                bloc.add(AuthEvent.passwordFieldChanged(value)),
            validator: (value) {
              if (value!.isEmpty) {
                return appLan.empty_password_validation_message;
              }
              if (!bloc.state.isPasswordValid) {
                return appLan.password_validation_message;
              }
              return null;
            },
            style: Theme.of(context).textTheme.subtitle1,
            decoration: InputDecoration(
              helperStyle: Theme.of(context).textTheme.subtitle1,
              hintText: appLan.password,
              suffixIcon: IconButton(
                onPressed: () {
                  bloc.add(const AuthEvent.changePasswordVisiblity());
                },
                icon: Icon(
                  bloc.state.obsecurePassword
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: AppColors.lightThemeDarkGreyColor,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 60.0,
          child: bloc.state.authPage == AuthPagesEnum.singUpPage
              ? Text(
                  appLan.password_values_to_validate,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontSize: 11),
                )
              : Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.resetPasswordPageRoute);
                    },
                    child: Text(
                      appLan.forgot_password,
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
