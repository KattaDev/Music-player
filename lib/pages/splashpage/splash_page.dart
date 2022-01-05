import 'package:flutter/material.dart';
import 'package:musicplayer/core/constants/colors.dart';
import 'package:musicplayer/core/constants/size_config.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        width: getW(750),
        color: bluecolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: getH(260),
            ),
            Container(
              height: getH(800),
              width: getW(700),
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    height: getH(715),
                    width: getW(360),
                    child: Image.asset("assets/images/Device.png"),
                  );
                },
                itemCount: 3,
              ),
            ),
            Text(
              "Negative or white space has the same\nimportance as the text and images on the \nlayout.",
              style: TextStyle(
                  fontSize: getW(27),
                  fontWeight: FontWeight.w400,
                  color: whitecolor),
              textAlign: TextAlign.center,
            ),
            Row(
              children: [
                InkWell(
                  child: Container(
                    height: getW(100),
                    width: getW(100),
                    decoration: BoxDecoration(
                      color: buttonbluecolor,
                        borderRadius: BorderRadius.all(
                            Radius.circular(getW(50)))),
                    child: Icon(Icons.arrow_back,color: whitecolor,),
                  ),
                ), InkWell(
                  child: Container(
                    height: getW(100),
                    width: getW(180),
                    decoration: BoxDecoration(
                      color: fbluecolor,
                        borderRadius: BorderRadius.all(
                            Radius.circular(getW(50)))),
                    child: Icon(Icons.arrow_forward,color: whitecolor,),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
