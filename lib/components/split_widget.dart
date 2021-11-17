import 'package:flutter/material.dart';

class SplitWidget extends StatelessWidget {
  const SplitWidget({
    Key? key,
    required this.body,
    this.bodySmallScreen,
    this.sidebar,
    this.haSidebar = true,
    this.hasTwoLayout = false

  }) : super(key: key);
  final Widget? sidebar;
  final Widget body;
  final Widget? bodySmallScreen;
  final bool? haSidebar;
  final bool? hasTwoLayout;

  final double breakpoint = 800;
  final double menuWidth = 240;


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (haSidebar!) {
      if (screenWidth >= breakpoint) {
        return Row(
          children: [
            SizedBox(
              width: menuWidth,
              child: sidebar,
            ),
            Expanded(child: body),
          ],
        );
      } else {
        return Scaffold(
          body: body,
          drawer: SizedBox(
            width: menuWidth,
            child: Drawer(
              child: sidebar,
            ),
          ),
        );
      }
    } else {
      if (hasTwoLayout!) {
        if (screenWidth >= breakpoint) {
          return Scaffold(
            body: body,
          );
        } else {
          return Scaffold(
            body: bodySmallScreen,
          );
        }
      } else {
        return Scaffold(
          body: body,
        );
      }
    }

  }
}