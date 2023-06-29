import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/base/di/app_di.dart';
import 'package:flutter_gui_clickhouse/components/base/export.dart';
import 'package:flutter_gui_clickhouse/pages/auth/model.dart';
import 'package:flutter_gui_clickhouse/theme/colors.dart';
import 'package:scoped_model/scoped_model.dart';

/// Authentication screen
class AuthScreen extends StatefulWidgetApp {
  const AuthScreen({
    super.key,
  });

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends StateApp<AuthScreen> {
  bool _passwordVisible = false;
  bool _passwordFocus = false;

  @override
  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return ScopedModel<AuthModel>(
      model: getIt<AuthModel>(),
      child: ScopedModelDescendant<AuthModel>(
        builder: (context, child, model) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: Icon(
                  Platform.isMacOS ? Icons.arrow_back_ios_new_rounded : Icons.arrow_back,
                ),
                padding: EdgeInsets.only(right: Platform.isMacOS ? 2 : 0),
                tooltip: 'Back',
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: const Color(0XFFE8ECF5),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: const Color(0XFF6788FF),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: SizedBox(
                      width: 1000,
                      height: 500,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0XFFE8ECF5).withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 5,
                            ),
                            BoxShadow(
                              color: const Color(0XFF6788FF).withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: double.infinity,
                                  color: Color(0xFFF5F6FA),
                                  child: Column(
                                    children: [
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 80),
                                        child: Form(
                                          child: Column(
                                            children: [
                                              Text(
                                                "Authentication",
                                                style: TextStyle(fontSize: 24),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                "You can not enter a password, by default it is not",
                                                style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 12),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(height: 30),
                                              TextFormField(
                                                keyboardType: TextInputType.url,
                                                decoration: InputDecoration(
                                                  labelText: "Server",
                                                  hintText: "http://localhost:18123/",
                                                ),
                                              ),
                                              SizedBox(height: 20),
                                              TextFormField(
                                                decoration: InputDecoration(
                                                  labelText: "User",
                                                  hintText: "default",
                                                ),
                                              ),
                                              SizedBox(height: 20),
                                              Focus(
                                                child: TextFormField(
                                                  obscureText: !_passwordVisible,
                                                  decoration: InputDecoration(
                                                    labelText: "Password",
                                                    suffixIcon: IconButton(
                                                      style: ElevatedButton.styleFrom(
                                                          foregroundColor: _passwordFocus ? AppColors.primary : Colors.black),
                                                      icon: Icon(
                                                        _passwordVisible ? Icons.visibility_off : Icons.visibility,
                                                      ),
                                                      onPressed: () => setState(() {
                                                        _passwordVisible = !_passwordVisible;
                                                      }),
                                                    ),
                                                  ),
                                                ),
                                                onFocusChange: (hasFocus) {
                                                  setState(() {
                                                    _passwordFocus = hasFocus;
                                                  });
                                                },
                                              ),
                                              SizedBox(height: 30),
                                              SizedBox(
                                                width: double.infinity,
                                                child: ElevatedButton(
                                                  onPressed: () => debugPrint('test'),
                                                  child: Text("Submit"),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: double.infinity,
                                  color: Color(0xFF6788FF),
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        child: RotationTransition(
                                          turns: AlwaysStoppedAnimation(45 / 360),
                                          child: Container(
                                            width: 500,
                                            height: 500,
                                            transform: Matrix4.translationValues(250, -250, 0.0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: const Color(0XFFE8ECF5).withOpacity(0.1),
                                                  spreadRadius: 5,
                                                  blurRadius: 5,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        child: RotationTransition(
                                          turns: AlwaysStoppedAnimation(45 / 360),
                                          child: Container(
                                            width: 500,
                                            height: 500,
                                            transform: Matrix4.translationValues(300, -300, 0.0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: const Color(0XFFE8ECF5).withOpacity(0.1),
                                                  spreadRadius: 5,
                                                  blurRadius: 5,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        child: RotationTransition(
                                          turns: AlwaysStoppedAnimation(45 / 360),
                                          child: Container(
                                            width: 500,
                                            height: 500,
                                            transform: Matrix4.translationValues(350, -350, 0.0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: const Color(0XFFE8ECF5).withOpacity(0.1),
                                                  spreadRadius: 5,
                                                  blurRadius: 5,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 80),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Spacer(),
                                            Text(
                                              "Connect to HTTP ClickHouse",
                                              style: TextStyle(color: Colors.white, fontSize: 44),
                                            ),
                                            SizedBox(height: 18),
                                            Text(
                                              "Here you can add your ClickHouse server",
                                              style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 14),
                                            ),
                                            Spacer(),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
