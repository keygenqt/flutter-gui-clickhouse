import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/base/di/app_di.dart';
import 'package:flutter_gui_clickhouse/components/base/export.dart';
import 'package:flutter_gui_clickhouse/extensions/keys_ext.dart';
import 'package:flutter_gui_clickhouse/pages/home/model.dart';
import 'package:flutter_gui_clickhouse/theme/colors.dart';
import 'package:scoped_model/scoped_model.dart';

/// Main screen
class HomeScreen extends StatefulWidgetApp {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends StateApp<HomeScreen> {
  double? listHeight;
  final _keyList = GlobalKey();

  @override
  void resizeWindow() {
    setState(() {
      const padding = 45;
      final y = _keyList.getY();
      if (y != null) {
        listHeight = MediaQuery.of(context).size.height - y - padding;
      }
    });
  }

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
                            turns: AlwaysStoppedAnimation(45 / 360),
                            child: Container(
                              width: 520,
                              height: 520,
                              transform: Matrix4.translationValues(-15, -20, 0.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
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
                            turns: AlwaysStoppedAnimation(45 / 360),
                            child: Container(
                              width: 420,
                              height: 420,
                              transform: Matrix4.translationValues(-15, 50, 0.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
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
                            turns: AlwaysStoppedAnimation(45 / 360),
                            child: Container(
                              width: 320,
                              height: 320,
                              transform: Matrix4.translationValues(-15, 120, 0.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
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
                  Container(
                    child: Column(
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
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 42),
                                            child: Text(
                                              "Connections",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
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
                                          bottom: 15,
                                        ),
                                        child: Wrap(
                                          direction: Axis.horizontal,
                                          children: [
                                            SizedBox(
                                              width: (width - 69) / 4,
                                              height: 127,
                                              child: Padding(
                                                padding: EdgeInsets.all(5),
                                                child: Card(
                                                  color: AppColors.primary,
                                                  child: InkWell(
                                                    borderRadius: BorderRadius.circular(12),
                                                    onTap: () => Navigator.pushNamed(context, '/auth'),
                                                    child: Center(
                                                      child: Icon(
                                                        Icons.add_circle_outline,
                                                        size: 40,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            for (int i = 0; i < 22; i++)
                                              SizedBox(
                                                  width: (width - 69) / 4,
                                                  child: Padding(
                                                    padding: EdgeInsets.all(5),
                                                    child: Card(
                                                      child: InkWell(
                                                        borderRadius: BorderRadius.circular(12),
                                                        onTap: () => debugPrint('click card'),
                                                        child: Padding(
                                                          padding: EdgeInsets.all(12),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text(
                                                                "Localhost",
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
