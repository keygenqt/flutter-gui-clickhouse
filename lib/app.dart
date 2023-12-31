import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/pages/connection/screen.dart';
import 'package:flutter_gui_clickhouse/pages/home/screen.dart';
import 'package:flutter_gui_clickhouse/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/connection': (context) => const ConnectionScreen(),
      },
    );
  }
}
