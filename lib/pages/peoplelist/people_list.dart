import 'package:flutter/material.dart';
import 'package:musicplayer/core/constants/colors.dart';
import 'package:musicplayer/core/constants/size_config.dart';

class PeopleListPage extends StatelessWidget {
  const PeopleListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appbarcolor,
            elevation: 0,
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  color: whitecolor,
                )),
            title: Column(
              children: [
                Text(
                  "TRANSACTION HISTORY",
                  style: TextStyle(
                      color: whitecolor,
                      fontSize: getW(26),
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "1.243 transactions",
                  style: TextStyle(color: textappbarcolor, fontSize: getW(20)),
                )
              ],
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: whitecolor,
                  ))
            ],
            bottom: const TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              automaticIndicatorColorAdjustment: false,
              
              tabs: [
                Tab(icon: Text("YEAR")),
                Tab(icon: Text("MONTH")),
                Tab(icon: Text("WEEK")),
                Tab(icon: Text("DAY")),
              ],
            ),
          ),
          body: TabBarView(
            children: [
             Container(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container(
                    height: getH(126),
                    width: getW(750),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "-\$85",
                              style: TextStyle(fontSize: getW(26)),
                            ),
                            Text("06:34AM")
                          ],
                        ),
                        Container(
                          height: getW(80),
                          width: getW(80),
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40))),
                          child: Image.asset("assets/images/🖼 profile.png"),),
                          Column(children: [Text("Ryan Ellis")],)
                      ],
                    ),
                  );
                },itemCount: 15,),
              ),
             Container(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container(
                    height: getH(126),
                    width: getW(750),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "-\$85",
                              style: TextStyle(fontSize: getW(26)),
                            ),
                            Text("06:34AM")
                          ],
                        ),
                        Container(
                          height: getW(80),
                          width: getW(80),
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40))),
                          child: Image.asset("assets/images/🖼 profile.png"),),
                          Column(children: [Text("Ryan Ellis")],)
                      ],
                    ),
                  );
                },itemCount: 15,),
              ),
             Container(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container(
                    height: getH(126),
                    width: getW(750),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "-\$85",
                              style: TextStyle(fontSize: getW(26)),
                            ),
                            Text("06:34AM")
                          ],
                        ),
                        Container(
                          height: getW(80),
                          width: getW(80),
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40))),
                          child: Image.asset("assets/images/🖼 profile.png"),),
                          Column(children: [Text("Ryan Ellis")],)
                      ],
                    ),
                  );
                },itemCount: 15,),
              ),
            Container(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container(
                    height: getH(126),
                    width: getW(750),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "-\$85",
                              style: TextStyle(fontSize: getW(26)),
                            ),
                            Text("06:34AM")
                          ],
                        ),
                        Container(
                          height: getW(80),
                          width: getW(80),
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40))),
                          child: Image.asset("assets/images/🖼 profile.png"),),
                          Column(children: [Text("Ryan Ellis")],)
                      ],
                    ),
                  );
                },itemCount: 15,),
              ),
            ],
          ),
        ));
  }
}
