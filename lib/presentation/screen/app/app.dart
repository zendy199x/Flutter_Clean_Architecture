import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../../constants.dart';
import '../../di/locator.dart';
import '../../routes/app_routes.dart';
import '../../routes/routes.dart';
import '../../values/themes.dart';
import 'app_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => locator<AppBloc>(),
        ),
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  void initState() {
    super.initState();
    Strings.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        primarySwatch: Colors.blue,
        // Define our text field style
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white38,
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.white),
          contentPadding: EdgeInsets.symmetric(
            vertical: defpaultPadding * 1.2,
            horizontal: defpaultPadding,
          ),
        ),
      ),
      locale: const Locale('vi', ''),
      supportedLocales: AppLocalizationsDelegate.supportedLocales,
      localizationsDelegates: const [
        AppLocalizationsDelegate.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode &&
              supportedLocale.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      navigatorKey: AppRoutes.navigatorKey,
      navigatorObservers: [
        AppRoutes.routeObserver,
      ],
      initialRoute: Routes.init,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
