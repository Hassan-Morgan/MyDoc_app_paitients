import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_doc_app_for_patients/core/utils/app_assets.dart';
import 'package:my_doc_app_for_patients/features/auth/presentation/logic/auth_page_bloc/auth_bloc.dart';
import 'package:my_doc_app_for_patients/features/auth/presentation/widgets/custom_elevated_button_icon.dart';

class SocialMediaAuthForm extends StatelessWidget {
  const SocialMediaAuthForm({Key? key, required this.bloc}) : super(key: key);
  final AuthBloc bloc;

  @override
  Widget build(BuildContext context) {
    final appLan = AppLocalizations.of(context)!;
    return Column(
      children: [
        Text(
          appLan.or_continue_with,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(height: 14.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomElevatedIconButton(
              onPressed: () {
                bloc.add(const AuthEvent.registerWithGoogle());
              },
              buttonIcon: Image.asset(
                AppAssets.googleIcon,
                width: 30,
                height: 30,
              ),
              buttonName: appLan.google,
            ),
            CustomElevatedIconButton(
              onPressed: () {
                bloc.add(const AuthEvent.registerWithFacebook());
              },
              buttonIcon: Image.asset(
                AppAssets.facebookIcon,
                width: 30,
                height: 30,
              ),
              buttonName: appLan.facebook,
            ),
          ],
        ),
      ],
    );
  }
}
