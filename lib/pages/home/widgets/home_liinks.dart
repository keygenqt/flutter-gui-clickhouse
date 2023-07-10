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
            icon: const Icon(Icons.help_outline),
          ),
          IconButton(
            tooltip: l10n.homeLinkSource,
            onPressed: () => debugPrint(''),
            icon: const Icon(Icons.code),
          ),
          IconButton(
            tooltip: l10n.homeLinkGroup,
            onPressed: () => debugPrint(''),
            icon: const Icon(Icons.forum_outlined),
          ),
        ],
      ),
    );
  }
}
