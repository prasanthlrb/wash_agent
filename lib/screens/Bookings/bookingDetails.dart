import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:carwash_provider/components/widgets.dart';
import 'package:carwash_provider/language/locale.dart';
import 'package:carwash_provider/style/colors.dart';
import 'package:flutter/material.dart';

class BookingDetails extends StatefulWidget {
  String name;
  BookingDetails(this.name);

  @override
  _BookingDetailsState createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    // var safeHeight = MediaQuery.of(context).size.height -
    //     AppBar().preferredSize.height -
    //     MediaQuery.of(context).padding.vertical;
    var locale = AppLocalizations.of(context);
    TextStyle whiteFont =
        Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 15);
    return FadedSlideAnimation(
      Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.more_vert,
                size: 20,
              ),
            )
          ],
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
            locale.bookingDetails,
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                fontSize: 20, fontWeight: FontWeight.w600, letterSpacing: 0.5),
          ),
        ),
        body: Stack(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RadiantGradientMask(
                                child: Text(
                                  locale.bookedBy,
                                  style: whiteFont.copyWith(
                                      color: Color(0xff29ee86)),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Row(
                                children: [
                                  Text(
                                    widget.name,
                                    style: whiteFont,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.phone,
                                    size: 20,
                                    color: iconFgColor,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text("+971 567100733",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(color: subtitle))
                            ],
                          ),
                          Divider(
                            thickness: 3,
                            color: darkBg,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RadiantGradientMask(
                                  child: Text(
                                    locale.vehicle,
                                    style: whiteFont.copyWith(
                                        color: Color(0xff29ee86)),
                                  ),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Text(
                                  locale.car1,
                                  style: whiteFont,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  locale.car1Number,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(color: subtitle),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 3,
                            color: darkBg,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RadiantGradientMask(
                                      child: Text(
                                        locale.arrangePickupAndDrop,
                                        overflow: TextOverflow.ellipsis,
                                        style: whiteFont.copyWith(
                                            color: Color(0xff29ee86)),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(locale.serviceProviderWillpickup,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(color: subtitle)),
                                SizedBox(
                                  height: 13,
                                ),
                                Text(
                                  locale.selectPickupAddress,
                                  style: whiteFont.copyWith(fontSize: 11),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      locale.homeb,
                                      style: whiteFont.copyWith(fontSize: 11),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Flexible(
                                        child: Text(locale.dummyAddress2,
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2
                                                .copyWith(color: subtitle))),
                                    Icon(
                                      Icons.navigation,
                                      color: iconFgColor,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 3,
                            color: darkBg,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RadiantGradientMask(
                                  child: Text(
                                    locale.datetime,
                                    style: whiteFont.copyWith(
                                        color: Color(0xff29ee86)),
                                  ),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Text(
                                  locale.dummyDate1,
                                  style: whiteFont,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(locale.dummyTime1,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(color: subtitle))
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 3,
                            color: darkBg,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RadiantGradientMask(
                                  child: Text(
                                    locale.servicesSelected,
                                    style: whiteFont.copyWith(
                                        color: Color(0xff29ee86)),
                                  ),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      locale.bodywash,
                                      style: whiteFont,
                                    ),
                                    Text(
                                      "\AED 50",
                                      style: whiteFont,
                                    )
                                  ],
                                ),
                                SizedBox(height: 7),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      locale.interiorCleaning,
                                      style: whiteFont,
                                    ),
                                    Text(
                                      "\AED 70",
                                      style: whiteFont,
                                    )
                                  ],
                                ),
                                SizedBox(height: 7),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      locale.pickUpAndDropCharges,
                                      style: whiteFont,
                                    ),
                                    Text(
                                      "\AED 10",
                                      style: whiteFont,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 3,
                            color: darkBg,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  locale.totalAmount,
                                  style: whiteFont,
                                ),
                                RadiantGradientMask(
                                  child: Text(
                                    "\AED 130",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(fontSize: 18),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      beginOffset: Offset(0, 0.3),
      endOffset: Offset(0, 0),
      slideCurve: Curves.linearToEaseOut,
    );
  }
}
