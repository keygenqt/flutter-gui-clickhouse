import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/components/base/stateless_widget_app.dart';

import 'home_connect_form.dart';

class HomeConnectActions extends StatelessWidgetApp {
  const HomeConnectActions({super.key});

  @override
  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return Row(
      children: [
        const SizedBox(width: 42),
        Padding(
          padding: const EdgeInsets.only(bottom: 3),
          child: Text(
            l10n.homeActionTitle,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(width: 8),
        IconButton(
          tooltip: l10n.homeActionAdd,
          icon: Icon(
            Icons.add_circle_outline,
            color: Theme.of(context).textTheme.headlineSmall?.color,
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const SimpleDialog(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                      child: HomeConnectForm(),
                    ),
                  ],
                );
              },
            );
          },
        ),
        const Spacer(),
      ],
    );
  }
}
