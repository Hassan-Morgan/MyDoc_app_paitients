import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_doc_app_for_patients/core/presentation/shared_widgets/loading_widget.dart';
import 'package:my_doc_app_for_patients/core/utils/app_assets.dart';

import '../../../../core/presentation/shared_widgets/custom_dialog_widget.dart';
import '../logic/reset_password_cubit/reset_password_cubit.dart';

class ResetPasswordPage extends StatelessWidget {
  ResetPasswordPage({Key? key}) : super(key: key);

  final emailFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final appLan = AppLocalizations.of(context)!;
    return BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () => showDialog(
            context: context,
            builder: (context) => CustomDialog(
              title: appLan.successfull_title,
              message: appLan.successfull_reset_email_message,
            ),
          ),
          error: (failure) => failure.whenOrNull(
            networkFailure: () => showDialog(
              context: context,
              builder: (context) => CustomDialog(
                title: appLan.network_failure_title,
                message: appLan.network_failure_message,
              ),
            ),
            wrongEmail: () => showDialog(
              context: context,
              builder: (context) => CustomDialog(
                title: appLan.wrong_email_title,
                message: appLan.wrong_email_message,
              ),
            ),
            serverError: () => showDialog(
              context: context,
              builder: (context) => CustomDialog(
                title: appLan.server_failure_title,
                message: appLan.server_failure_message,
              ),
            ),
          ),
        );
      },
      builder: (context, state) {
        final cubit = BlocProvider.of<ResetPasswordCubit>(context);
        return Stack(
          children: [
            Scaffold(
              appBar: AppBar(
                title: Text(appLan.forgot_password),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(AppAssets.appIcon),
                      Column(
                        children: [
                          Text(
                            appLan.email,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          const SizedBox(height: 14.0),
                          Form(
                            key: emailFormKey,
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (value) =>
                                  cubit.emailFieldChanged(value),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return appLan.empty_email_validation_message;
                                }
                                if (!cubit.isEmailValid) {
                                  return appLan.email_validation_message;
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: appLan.email,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 48.0),
                      ElevatedButton(
                          onPressed: () {
                            if (emailFormKey.currentState!.validate()) {
                              cubit.sendResetEmail();
                            }
                          },
                          child: Text(appLan.send_reset_email)),
                    ],
                  ),
                ),
              ),
            ),
            if (state == const ResetPasswordState.loading())
              const LoadingWidget(),
          ],
        );
      },
    );
  }
}
