import 'package:AdminApp/user/IntroPage.dart';
import 'package:AdminApp/pages/authentication_page.dart';
import 'package:AdminApp/pages/home/DashBoard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openapi/api.dart';
import 'bloc/cancellation/cancellation_bloc.dart';
import 'bloc/theme/theme_bloc.dart';
import 'pages/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Openapi openapi = Openapi();
    return MultiBlocProvider(
        providers: [
          BlocProvider<ThemeBloc>(
            create: (context) => ThemeBloc(),
          ),
          BlocProvider<CancellationInitBloc>(
            create: (context) => CancellationInitBloc(openapi: openapi),
          )
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, ThemeState themeState) {
            return initMaterialApp(
              themeState,
            );
          },
        ));
  }

  Widget initMaterialApp(ThemeState themeState) {
    return MaterialApp(
      theme: themeState.themeData,
      // theme: appThemes[AppThemes.OrangeTheme],
      initialRoute: '/',
      routes: {
        '/': (context) => IntroPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

// keyCloack username : admin password : FSR4gqnPbf6V5Ez
