
import 'package:flutter/material.dart';
import 'package:musicplayer/core/constants/colors.dart';
import 'package:musicplayer/core/constants/size_config.dart';
import 'package:musicplayer/pages/statistics/statistic.dart';
import 'package:musicplayer/provider/bottom_navigation_bar_provider.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarMy extends StatefulWidget {
  const BottomNavigationBarMy({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarMyState createState() => _BottomNavigationBarMyState();
}

class _BottomNavigationBarMyState extends State<BottomNavigationBarMy> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: _bottomNavigationBar(),
    );
  }

  _bottomNavigationBar() {
    return Container(
      height: getH(148.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.2),
            spreadRadius: 1.0,
            blurRadius: 2.0,
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedItemColor: cyanColor,
        currentIndex: context.watch<BottomNavigationBarProvider>().currentIndex,
        onTap: (v) {
          context.read<BottomNavigationBarProvider>().indexChanger(v);
        },
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StatisticsPage()));
                },
                icon: const Icon(Icons.calendar_today)),
            activeIcon: const Icon(
              Icons.calendar_today_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: IconButton(
                constraints:
                    const BoxConstraints(maxHeight: 50.0, maxWidth: 50.0),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StatisticsPage()));
                },
                icon: const Icon(Icons.photo)),
            activeIcon: const Icon(
              Icons.photo_outlined,
            ),
          ),
          const BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.account_circle),
            activeIcon: Icon(
              Icons.account_circle_outlined,
            ),
          ),
          const BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.inbox),
            activeIcon: Icon(
              Icons.inbox_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: IconButton(
                constraints:
                    const BoxConstraints(maxHeight: 50.0, maxWidth: 50.0),
                onPressed: () {
                  context
                      .read<BottomNavigationBarProvider>()
                      .keyOfScaffold
                      .currentState!
                      .openDrawer();
                },
                icon: const Icon(Icons.more_horiz)),
            activeIcon: const Icon(
              Icons.more_horiz_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
