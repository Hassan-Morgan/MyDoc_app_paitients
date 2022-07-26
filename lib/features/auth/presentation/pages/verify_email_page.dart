import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_doc_app_for_patients/core/presentation/shared_widgets/loading_widget.dart';
import 'package:my_doc_app_for_patients/features/auth/presentation/logic/verify_email_cubit/verify_email_cubit.dart';

import '../../../../core/presentation/shared_widgets/custom_dialog_widget.dart';
import '../../../../core/utils/app_assets.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appLan = AppLocalizations.of(context)!;

    return BlocConsumer<VerifyEmailCubit, VerifyEmailState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () => showDialog(
            context: context,
            builder: (context) => CustomDialog(
              title: appLan.successfull_title,
              message: appLan.successfull_verify_email_message,
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
            serverError: () => showDialog(
              context: context,
              builder: (context) => CustomDialog(
                title: appLan.server_failure_title,
                message: appLan.verify_email_server_error,
              ),
            ),
          ),
        );
      },
      builder: (context, state) {
        return Stack(
          children: [
            Scaffold(
              appBar: AppBar(
                title: Text(appLan.verify_email),
              ),
              body: Padding(
                padding: const EdgeInsets.all(24.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SvgPicture.asset(AppAssets.appIcon),
                      const SizedBox(height: 24.0),
                      Text(
                        appLan.verify_email_header,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      const SizedBox(height: 48.0),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<VerifyEmailCubit>(context)
                                  .senEmailVerification();
                            },
                            child: Text(appLan.send_verification_email),
                          ),
                          const SizedBox(height: 24.0),
                          OutlinedButton(
                            onPressed: () {
                              Phoenix.rebirth(context);
                            },
                            child: Text(appLan.already_verified),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (state == const VerifyEmailState.loding()) const LoadingWidget(),
          ],
        );
      },
    );
  }
}
