import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyShoppingCartScreen extends StatelessWidget {
  final VoidCallback onPressed;

  const EmptyShoppingCartScreen({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // SizedBox(
          //   width: size.width / 2.5,
          //   height: size.height / 2.5,
          //   child: SvgPicture.asset(
          //     'assets/image/nothing_founded_icon.svg',
          //   ),
          // ),
          Text(
            "Seems like you didn't choose anything yet",
            style: theme.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            buttonTitle: 'Return to menu',
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
