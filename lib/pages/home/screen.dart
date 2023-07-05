import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/base/di/app_di.dart';
import 'package:flutter_gui_clickhouse/components/base/export.dart';
import 'package:flutter_gui_clickhouse/pages/home/model.dart';
import 'package:flutter_gui_clickhouse/theme/colors.dart';
import 'package:scoped_model/scoped_model.dart';

/// Start app screen
class HomeScreen extends StatefulWidgetApp {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends StateApp<HomeScreen> {
  bool _dialogShow = false;

  @override
  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    final width = MediaQuery.of(context).size.width;

    return ScopedModel<HomeModel>(
      model: getIt<HomeModel>(),
      child: ScopedModelDescendant<HomeModel>(
        builder: (context, child, model) {
          return Scaffold(
            body: Container(
              width: double.infinity,
              color: const Color(0XFFE8ECF5),
              child: Stack(
                children: [
                  Stack(
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
                  ),
                  Column(
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            Flexible(
                              flex: 0,
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(40),
                                      child: SizedBox(
                                        width: 800,
                                        child: Column(
                                          children: [
                                            Text(
                                              "Welcome to GUI ClickHouse",
                                              style: TextStyle(color: Colors.black, fontSize: 44),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                              "GUI ClickHouse is not official graphical user interface (GUI) tool for ClickHouse. It allow you connect to HTTP interface database and design, create and browse schemas.",
                                              style: TextStyle(color: Colors.black, fontSize: 18),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 200,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          IconButton(
                                            tooltip: "Documentation",
                                            onPressed: () => debugPrint(''),
                                            icon: Icon(Icons.help_outline),
                                          ),
                                          IconButton(
                                            tooltip: "Source",
                                            onPressed: () => debugPrint(''),
                                            icon: Icon(Icons.code),
                                          ),
                                          IconButton(
                                            tooltip: "Group",
                                            onPressed: () => debugPrint(''),
                                            icon: Icon(Icons.forum_outlined),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 35),
                                    Row(
                                      children: [
                                        SizedBox(width: 42),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            "Connections",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        IconButton(
                                          tooltip: "Add Connection",
                                          icon: Icon(Icons.add_circle_outline),
                                          // onPressed: () => Navigator.pushNamed(context, '/auth'),
                                          onPressed: () {
                                            setState(() {
                                              _dialogShow = true;
                                            });

                                            showDialog(
                                              context: context,
                                              barrierColor: Colors.transparent,
                                              builder: (BuildContext context) {
                                                bool _passwordVisible = false;

                                                return Material(
                                                  color: Colors.transparent,
                                                  child: Stack(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            _dialogShow = false;
                                                          });
                                                          Navigator.pop(context);
                                                        },
                                                      ),
                                                      StatefulBuilder(
                                                        builder: (context, setState) {
                                                          return Column(
                                                            children: [
                                                              Spacer(),
                                                              Center(
                                                                child: ClipRRect(
                                                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                                                  child: Container(
                                                                    color: Colors.white,
                                                                    width: 450,
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(40),
                                                                      child: Form(
                                                                        child: Column(
                                                                          children: [
                                                                            Text(
                                                                              "Connection",
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
                                                                            TextFormField(
                                                                              obscureText: !_passwordVisible,
                                                                              decoration: InputDecoration(
                                                                                labelText: "Password",
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
                                                                  ),
                                                                ),
                                                              ),
                                                              Spacer(),
                                                            ],
                                                          );
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(
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
                                      padding: EdgeInsets.only(
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
                                                  padding: EdgeInsets.all(5),
                                                  child: Card(
                                                    child: InkWell(
                                                      borderRadius: BorderRadius.circular(12),
                                                      onTap: () => Navigator.pushNamed(context, '/connect'),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(12),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              "Localhost ${i + 1}",
                                                              overflow: TextOverflow.ellipsis,
                                                              style: TextStyle(color: Colors.black, fontSize: 18),
                                                              textAlign: TextAlign.center,
                                                            ),
                                                            SizedBox(height: 15),
                                                            Text(
                                                              "default",
                                                              overflow: TextOverflow.ellipsis,
                                                              style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 14),
                                                              textAlign: TextAlign.center,
                                                            ),
                                                            SizedBox(height: 4),
                                                            Text(
                                                              "http://localhost:18123",
                                                              overflow: TextOverflow.ellipsis,
                                                              style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 14),
                                                              textAlign: TextAlign.center,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )),
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
                    ],
                  ),
                  Visibility(
                    visible: _dialogShow,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
