import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/components/base/export.dart';

class HomeConnectForm extends StatefulWidgetApp {
  const HomeConnectForm({
    super.key,
  });

  @override
  State<HomeConnectForm> createState() => _HomeConnectFormState();
}

class _HomeConnectFormState extends StateApp<HomeConnectForm> {
  bool _passwordVisible = false;

  @override
  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return Form(
      child: Column(
        children: [
          Text(
            l10n.homeFormConnectTitle,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            l10n.homeFormConnectSubtitle,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.black.withOpacity(0.5),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          TextFormField(
            keyboardType: TextInputType.url,
            decoration: InputDecoration(
              labelText: l10n.homeFormConnectFieldLabelServer,
              hintText: l10n.homeFormConnectFieldHintServer,
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              labelText: l10n.homeFormConnectFieldLabelUser,
              hintText: l10n.homeFormConnectFieldHintUser,
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            obscureText: !_passwordVisible,
            decoration: InputDecoration(
              labelText: l10n.homeFormConnectFieldLabelPassword,
              suffixIcon: IconButton(
                icon: Icon(
                  _passwordVisible ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () => setState(() {
                  _passwordVisible = !_passwordVisible;
                }),
              ),
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => debugPrint(''),
              child: Text(l10n.homeFormConnectSubmit),
            ),
          )
        ],
      ),
    );
  }
}
