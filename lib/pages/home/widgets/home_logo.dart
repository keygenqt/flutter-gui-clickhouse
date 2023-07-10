import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/components/base/stateless_widget_app.dart';
import 'package:flutter_gui_clickhouse/theme/colors.dart';

class HomeLogo extends StatelessWidgetApp {
  const HomeLogo({super.key});

  @override
  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return Stack(
      children: [
        SizedBox(
          child: Align(
            alignment: Alignment.topRight,
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(45 / 360),
              child: Container(
                width: 520,
                height: 520,
                transform: Matrix4.translationValues(-15, -20, 0.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          child: Align(
            alignment: Alignment.topRight,
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(45 / 360),
              child: Container(
                width: 420,
                height: 420,
                transform: Matrix4.translationValues(-15, 50, 0.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          child: Align(
            alignment: Alignment.topRight,
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(45 / 360),
              child: Container(
                width: 320,
                height: 320,
                transform: Matrix4.translationValues(-15, 120, 0.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
