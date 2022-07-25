import 'package:flutter/material.dart';

class CustomElevatedIconButton extends StatelessWidget {
  const CustomElevatedIconButton({
    Key? key,
    required this.onPressed,
    required this.buttonIcon,
    required this.buttonName,
  }) : super(key: key);
  final void Function() onPressed;
  final Widget buttonIcon;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: buttonIcon,
        label: Text(
          buttonName,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
      ),
    );
  }
}
