import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:carwash_provider/assets/assets.dart';
import 'package:carwash_provider/components/widgets.dart';
import 'package:carwash_provider/language/locale.dart';
import 'package:carwash_provider/screens/Auth/forgotPassword/ui/forgotPassword_ui.dart';
import 'package:carwash_provider/screens/Auth/signin/backend/countries.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  String _country;

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: FadedSlideAnimation(
        Stack(
          // alignment: Alignment.bottomCenter,
          children: [
            Container(
              foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.transparent,
                Theme.of(context).backgroundColor
              ], begin: Alignment.topCenter)),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.splashBg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              // margin: EdgeInsets.only(top: deviceHeight * 0.18),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Spacer(flex: 3),

                  // Row(
                  //   children: [
                  Container(
                    color: Colors.transparent,
                    height: deviceHeight * 0.12,
                    child: Image(image: AssetImage(Assets.logo)),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            locale.selectCountry,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          DropdownButtonFormField(
                            dropdownColor: Theme.of(context).backgroundColor,
                            hint: Text(
                              locale.selectCountry,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            style: Theme.of(context).textTheme.bodyText1,
                            items: Countries.map((country) {
                              return DropdownMenuItem(
                                value: country,
                                child: Container(child: Text(country)),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() => _country = newValue);
                            },
                            value: _country,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[800])),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[800])),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      EntryField(
                          locale.phoneNumber, locale.enterMobileNumber, false),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPassword()));
                        },
                        child: GradientButton(locale.continuee),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                  Spacer()
                ],
              ),
            ),
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
