import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class StateApp<T extends StatefulWidget> extends State<T> with WidgetsBindingObserver {

  void resizeWindow() {}

  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  );

  @override
  Widget build(BuildContext context) => buildWide(
        context,
        AppLocalizations.of(context)!,
      );

  @override
  void didChangeMetrics() {
    _resizeWindow();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _resizeWindow();
    });
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  void _resizeWindow() {
    for (int i = 0; i <= 10; i++) {
      Future.delayed(Duration(milliseconds: 50 * i), () {
        if (context.mounted) {
          resizeWindow();
        }
      });
    }
  }
}
