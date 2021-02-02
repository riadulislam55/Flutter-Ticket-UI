import 'package:flutter/material.dart';
import 'package:flutter_ticket_ui/theme/colors.dart' as Style;

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        "Home",
        style: TextStyle(
          color: Style.Colors.primaryTextColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
