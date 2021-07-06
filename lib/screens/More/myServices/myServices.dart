import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:carwash_provider/components/widgets.dart';
import 'package:carwash_provider/language/locale.dart';
import 'package:carwash_provider/screens/More/myServices/selectServices.dart';
import 'package:carwash_provider/style/colors.dart';
import 'package:flutter/material.dart';

class MyServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return FadedSlideAnimation(
      Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          leading: IconButton(
              icon: Icon(
                Icons.chevron_left,
                color: iconFgColor,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          elevation: 0,
          backgroundColor: Theme.of(context).backgroundColor,
          title: Text(
            locale.myServices,
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                fontSize: 20, fontWeight: FontWeight.w600, letterSpacing: 0.5),
          ),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectServices()));
                  },
                  leading: HomePageIcons(Icons.add, 25.0, 12.0),
                  title: Text(locale.addServices),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Row(
                    children: [
                      Text(locale.myServices,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(color: subtitle)),
                      Spacer(),
                      Text(locale.addServicePrice,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(color: subtitle))
                    ],
                  ),
                ),
                ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.only(bottom: 75),
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    List icons = [
                      Icons.drive_eta,
                      Icons.accessible,
                      Icons.calendar_view_day,
                      Icons.wb_sunny,
                      Icons.drive_eta,
                      Icons.accessible,
                      Icons.calendar_view_day,
                      Icons.wb_sunny
                    ];
                    List title = [
                      locale.bodywash,
                      locale.interiorCleaning,
                      locale.engineDetailing,
                      locale.carPolish,
                      locale.bodywash,
                      locale.interiorCleaning,
                      locale.engineDetailing,
                      locale.carPolish,
                    ];
                    List price = [
                      "\AED 50",
                      "\AED 70",
                      "\AED 85",
                      "\AED 45",
                      "\AED 50",
                      "\AED 70",
                      "\AED 85",
                      "\AED 45"
                    ];

                    return Container(
                      color: Theme.of(context).backgroundColor,
                      child: ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        leading: SimpleHomePageIcons(icons[index], 25.0, 12.0),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: Text(title[index])),
                            Text(price[index]),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        color: Colors.transparent,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 55,
                        child: GradientButton(locale.updateInfo)))),
          ],
        ),
      ),
      beginOffset: Offset(0, 0.3),
      endOffset: Offset(0, 0),
      slideCurve: Curves.linearToEaseOut,
    );
  }
}
