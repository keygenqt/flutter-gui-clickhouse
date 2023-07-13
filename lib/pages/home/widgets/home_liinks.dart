import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/components/base/stateless_widget_app.dart';

class HomeLinks extends StatelessWidgetApp {
  const HomeLinks({super.key});

  @override
  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return SizedBox(
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            tooltip: l10n.homeLinkDoc,
            onPressed: () => debugPrint(''),
            icon: Icon(
              Icons.help_outline,
              color: Theme.of(context).textTheme.headlineSmall?.color,
            ),
          ),
          IconButton(
            tooltip: l10n.homeLinkSource,
            onPressed: () => debugPrint(''),
            icon: Icon(
              Icons.code,
              color: Theme.of(context).textTheme.headlineSmall?.color,
            ),
          ),
          IconButton(
            tooltip: l10n.homeLinkGroup,
            onPressed: () => debugPrint(''),
            icon: Icon(
              Icons.forum_outlined,
              color: Theme.of(context).textTheme.headlineSmall?.color,
            ),
          ),
        ],
      ),
    );
  }
}
