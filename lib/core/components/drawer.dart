import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:musicplayer/core/components/circle_avatar_with_badge.dart';
import 'package:musicplayer/core/constants/colors.dart';
import 'package:musicplayer/core/constants/size_config.dart';
import 'package:musicplayer/provider/drawer_provider.dart';
import 'package:musicplayer/provider/search_provider.dart';
import 'package:provider/provider.dart';

class DrawerMy extends StatelessWidget {
  const DrawerMy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Drawer(
      child: Ink(
        width: getW(700.0),
        height: getH(1624.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              bluecolor,
              drawerInkEndColor,
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: getH(190.0)),
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 0.0),
                child: Ink(
                  height: getH(80.0),
                  width: getW(410.0),
                  child: TextFormField(
                    controller:
                        context.watch<SearchProviderMy>().searchController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(.07),
                      hintText: "Find something",
                      suffixIcon: const Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(
                          getW(35.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: getH(150.0)),
            ListView.builder(
              shrinkWrap: true,
              itemCount: context.watch<DrawerProviderMy>().items.length,
              itemBuilder: (_, __) {
                return ListTile(
                  onTap: (){
                    
                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: getW(45.0),
                    child: Icon(
                      context.watch<DrawerProviderMy>().itemIcons[__],
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    context.watch<DrawerProviderMy>().items[__],
                    style: TextStyle(
                        fontSize: getW(25.0),
                        fontWeight: FontWeight.w700,
                        letterSpacing: getW(3.0),
                        color: Colors.white,
                        fontFamily: "Monserrat"),
                  ),
                );
              },
            ),
            SizedBox(height: getH(30.0)),
            ListTile(
              leading: const CircleAvatarWithBadgeMy(color: Colors.white),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your name",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getW(30.0),
                    ),
                  ),
                  Text(
                    "Your Status",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getW(22.0),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
