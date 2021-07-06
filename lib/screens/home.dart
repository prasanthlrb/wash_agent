import 'package:carwash_provider/language/locale.dart';
import 'package:carwash_provider/screens/Bookings/myBookings.dart';
import 'package:carwash_provider/screens/More/more.dart';
import 'package:carwash_provider/screens/Reviews/reviews.dart';
import 'package:carwash_provider/style/colors.dart';
import 'package:flutter/material.dart';

class NavigatonBarHome extends StatefulWidget {
  @override
  _NavigatonBarHomeState createState() => _NavigatonBarHomeState();
}

class _NavigatonBarHomeState extends State<NavigatonBarHome> {
  int currentIndex = 0;
  final List<Widget> routes = [
    MyBookings(),
    Reviews(),
    More(),
  ];

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);

    return Scaffold(
      body: Stack(
        children: [
          routes[currentIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavigationBar(
              elevation: 1,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              selectedItemColor: iconFgColor,
              unselectedItemColor: Colors.white,
              currentIndex: currentIndex,
              showSelectedLabels: true,
              selectedLabelStyle: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: Color(0xff3fa0d7)),
              unselectedLabelStyle: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: Colors.white),
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xff343345),
              items: [
                BottomNavigationBarItem(
                    label: locale.myBookings,
                    icon: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.shield,
                        size: 15,
                      ),
                    )),
                BottomNavigationBarItem(
                    label: locale.reviews,
                    icon: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.star,
                        size: 15,
                      ),
                    )),
                BottomNavigationBarItem(
                    label: locale.more,
                    icon: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.more_horiz,
                        size: 15,
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
