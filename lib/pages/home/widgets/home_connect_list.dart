import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/components/base/stateless_widget_app.dart';

class HomeConnectList extends StatelessWidgetApp {
  const HomeConnectList({super.key});

  @override
  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 0,
        right: 20,
        bottom: 40,
      ),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 0,
              right: 10,
              bottom: 0,
            ),
            child: Wrap(
              direction: Axis.horizontal,
              children: [
                for (int i = 0; i < 14; i++)
                  SizedBox(
                    width: (width - 69) / 4,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Card(
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () => Navigator.pushNamed(context, '/connection'),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Localhost ${i + 1}",
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.titleMedium,
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  "default",
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                        color: Colors.black.withOpacity(0.7),
                                      ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "http://localhost:18123",
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                    color: Colors.black.withOpacity(0.7),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
