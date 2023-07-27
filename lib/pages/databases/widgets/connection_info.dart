import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/components/base/stateless_widget_app.dart';
import 'package:flutter_gui_clickhouse/theme/colors.dart';

class ConnectionInfo extends StatelessWidgetApp {
  const ConnectionInfo({super.key});

  @override
  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return Container(
      width: 350,
      height: double.infinity,
      color: AppColors.background,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13, top: 40, right: 15, bottom: 40),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Column(
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color: Colors.green,
                                    width: 5,
                                  ),
                                ),
                              ),
                              child: Text(
                                'Database server'.toUpperCase(),
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25, top: 10, right: 25, bottom: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Derver: Localhost via UNIX socket',
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Server type: MySQL',
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Server version: 8.0.33-0ubuntu0',
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Protocol version: 10',
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color: Colors.cyan,
                                    width: 5,
                                  ),
                                ),
                              ),
                              child: Text(
                                'Web server'.toUpperCase(),
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25, top: 10, right: 25, bottom: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'nginx/1.18.0',
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Database client: 8.1.2-1ubuntu2.13',
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Extension: mysqli',
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Version: 8.1.2',
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {
                  // Add your onPressed code here!
                },
                child: const Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
