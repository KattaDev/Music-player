import 'package:flutter/material.dart';
import 'package:musicplayer/core/constants/size_config.dart';

class CircleAvatarWithBadgeMy extends StatelessWidget {
 final Color color;
  const CircleAvatarWithBadgeMy({required this.color, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: getH(124.0),
      width: getW(80.0),
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(0.92, -0.92),
            child: Icon(
              Icons.circle,
              color: color,
                
              size: getW(15.0),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundImage:
               const    AssetImage("assets/images/img.jpg"),
              radius: getW(40.0),
            ),
          ),
        ],
      ),
    );
  }
}