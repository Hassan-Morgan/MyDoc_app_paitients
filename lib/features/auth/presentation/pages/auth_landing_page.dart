import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AuthLandingPage extends StatelessWidget {
  const AuthLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
            child: Text(
              AppLocalizations.of(context)!.have_no_account_message,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        );
  }
}
