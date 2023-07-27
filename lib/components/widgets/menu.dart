import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gui_clickhouse/components/base/export.dart';
import 'package:flutter_gui_clickhouse/theme/colors.dart';

class MenuItem {
  const MenuItem({
    required this.index,
    required this.icon,
    required this.onPressed,
  });

  final int index;
  final IconData icon;
  final void Function(int) onPressed;
}

/// Main connect screen
class MenuWidget extends StatefulWidgetApp {
  const MenuWidget({
    super.key,
    required this.items,
  });

  final List<MenuItem> items;

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends StateApp<MenuWidget> {
  int _indexMenu = 0;

  @override
  Widget buildWide(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return Stack(
      children: [
        Container(
          color: AppColors.background,
          width: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            children: [
              for (final item in widget.items)
                _getItem(item),
              const Spacer(),
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.exit_to_app,
                  size: 30,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 13),
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getItem(MenuItem item) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: _indexMenu == item.index
          ? BoxDecoration(
              color: _indexMenu == item.index ? AppColors.primary.withOpacity(0.8) : Colors.white,
              border: Border(
                left: BorderSide(
                  color: _indexMenu == item.index ? AppColors.primaryDark : AppColors.background,
                  width: 5,
                ),
              ),
            )
          : null,
      child: IconButton(
        color: _indexMenu == item.index ? Colors.white : AppColors.primary,
        onPressed: () => setState(() {
          _indexMenu = item.index;
          item.onPressed(_indexMenu);
        }),
        icon: Padding(
          padding: _indexMenu == item.index ? const EdgeInsets.only(left: 0, right: 5) : const EdgeInsets.only(left: 2.5, right: 2.5),
          child: Icon(
            item.icon,
            size: 30,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: _indexMenu == item.index ? 30 : 32.5, vertical: 13),
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        isSelected: _indexMenu == item.index,
      ),
    );
  }
}
