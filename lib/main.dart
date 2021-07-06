import 'package:carwash_provider/screens/Auth/signin/ui/signin_ui.dart';
import 'package:carwash_provider/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'language/languageCubit.dart';
import 'language/locale.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    {
      return BlocProvider<LanguageCubit>(
        create: (context) => LanguageCubit(),
        child: BlocBuilder<LanguageCubit, Locale>(
          builder: (_, locale) {
            return MaterialApp(
              localizationsDelegates: [
                const AppLocalizationsDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: [
                const Locale('en'),
                const Locale('ar'),
                const Locale('pt'),
                const Locale('fr'),
                const Locale('id'),
                const Locale('es'),
                const Locale('tr'),
                const Locale('it'),
                const Locale('sw'),
              ],
              locale: locale,
              theme: uiTheme(),
              home: Signin(),
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      );
    }
  }
}
