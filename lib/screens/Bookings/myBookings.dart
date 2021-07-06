import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:carwash_provider/assets/assets.dart';
import 'package:carwash_provider/components/constants.dart';
import 'package:carwash_provider/components/widgets.dart';
import 'package:carwash_provider/language/locale.dart';
import 'package:carwash_provider/screens/Bookings/bookingDetails.dart';
import 'package:carwash_provider/style/colors.dart';
import 'package:flutter/material.dart';

class MyBookings extends StatelessWidget {
  List title = [
    "Samantha Smith",
    "George Williamson",
    "Peter Jhonson",
    "Samantha Smith",
    "Rodriks Taylor",
    "George Williamson",
    "Peter Jhonson",
    "Samantha Smith",
    "Samantha Smith",
    "Rodriks Taylor",
  ];
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(locale.myBookings),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.history,
              color: Colors.grey,
              size: 20,
            ),
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 65),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            List bookingtype = [
              locale.pickup,
              locale.driveIn,
              locale.pickup,
              locale.driveIn,
              locale.pickup,
              locale.driveIn,
              locale.pickup,
              locale.driveIn,
              locale.pickup,
              locale.driveIn,
            ];
            List imgs = [
              Assets.profile,
              Assets.layer_10,
              Assets.layer_12,
              Assets.layer_13,
              Assets.profile,
              Assets.layer_10,
              Assets.layer_12,
              Assets.layer_13,
              Assets.profile,
              Assets.layer_10,
            ];

            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BookingDetails(title[index])));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xff1e2152),
                    Color(0xff1e6888),
                  ], begin: Alignment.centerLeft),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: FadedScaleAnimation(
                        CircleAvatar(
                          backgroundImage: AssetImage(imgs[index]),
                        ),
                        durationInMilliseconds: 400,
                      ),
                      title: Text(title[index],
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 18)),
                      subtitle: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(bookingtype[index],
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 12)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 73),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(locale.vehicle,
                                  style: TextStyle(color: subtitle)),
                              SizedBox(
                                width: 40,
                              ),
                              Text(locale.car1,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(fontSize: 13))
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                locale.datetime,
                                style: TextStyle(color: subtitle),
                              ),
                              SizedBox(
                                width: 13,
                              ),
                              Text(locale.dummyTime,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(fontSize: 13))
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(locale.bookingFor,
                                  style: TextStyle(color: subtitle)),
                              SizedBox(
                                width: 15,
                              ),
                              Text(locale.carPolish,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(fontSize: 13))
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
