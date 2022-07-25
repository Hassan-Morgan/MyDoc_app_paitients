import 'package:flutter/material.dart';
import 'package:my_doc_app_for_patients/core/utils/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    Key? key,
    required this.title,
    required this.message,
  }) : super(key: key);

  final String title;
  final String message;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      actionsPadding: const EdgeInsets.all(14.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      title: Center(
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: AppColors.primaryBlueColor),
        ),
      ),
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.subtitle1,
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(AppLocalizations.of(context)!.ok),
        )
      ],
    );
  }
}
