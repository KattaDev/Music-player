import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:musicplayer/core/constants/colors.dart';
import 'package:musicplayer/core/constants/size_config.dart';

class LoginPage extends StatelessWidget {
  var _emailcontroller = TextEditingController();

  var _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/loginback.png"))),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: getH(240),
                    left: getW(175),
                    right: getW(175),
                    bottom: 160),
                height: getH(200),
                width: getW(400),
                child: SvgPicture.asset('assets/icons/uilogo.svg',
                    color: whitecolor),
              ),
              Container(
                margin: EdgeInsets.only(left: getW(60), right: getW(60)),
                height: getH(360),
                width: getW(630),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GlassContainer(
                        blur: 20,
                        shadowStrength: 20,
                        opacity: 0.2,

                        //--code to remove border
                        border: Border.fromBorderSide(BorderSide.none),
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          height: getH(110),
                          child: TextFormField(
                            style: TextStyle(
                                color: whitecolor, fontWeight: FontWeight.w500),
                            controller: _emailcontroller,
                            decoration: InputDecoration(
                              suffix: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      getH(5),
                                    ),
                                  ),
                                ),
                                height: getW(50),
                                width: getW(50),
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 0, color: Colors.grey)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    getW(8),
                                  ),
                                ),
                              ),
                              hintText: "Email",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getH(110),
                        child: TextFormField(
                          style: TextStyle(
                              color: whitecolor, fontWeight: FontWeight.w500),
                          controller: _passwordcontroller,
                          decoration: InputDecoration(
                              suffix: TextButton(
                                child: Text(
                                  "SHOW",
                                  style: TextStyle(color: whitecolor),
                                ),
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.blueGrey,
                                    maximumSize: Size(getW(160), getH(80)),
                                    fixedSize: Size(getW(160), getH(60))),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 0)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    getW(8),
                                  ),
                                ),
                              ),
                              hintText: "Your password",
                              filled: true,
                              fillColor: inputcolor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("SIGN IN"),
                style: ElevatedButton.styleFrom(
                  primary: buttoncolor,
                  fixedSize: Size(getW(630), getH(110)),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(getW(50)))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: getW(100),
                    child: Divider(
                      height: 2,
                      thickness: 5,
                      color: Colors.blueGrey
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: getW(40)),
                    child: Text("OR",style: TextStyle(color: whitecolor,fontWeight: FontWeight.w500),),
                  ),
                 SizedBox(
                    width: getW(100),
                    child: Divider(
                      height: 2,
                      thickness: 5,
                      color: Colors.blueGrey
                    ),
                  ),
                ],
              ),
               GlassContainer(
                        blur: 2,
                        shadowStrength: 20,
                        opacity: 0.2,

                        //--code to remove border
                        border: Border.fromBorderSide(BorderSide.none),
                        borderRadius: BorderRadius.circular(50),
                        child:ElevatedButton(
                onPressed: () {},
                child: Text("SIGN IN"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  fixedSize: Size(getW(630), getH(110)),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(getW(50)))),
                ),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
