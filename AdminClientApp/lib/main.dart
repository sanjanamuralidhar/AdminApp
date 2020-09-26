import 'package:AdminApp/models/orderPending.dart';
import 'package:AdminApp/pages/DashBoard.dart';
import 'package:AdminApp/pages/IntroPage.dart';
import 'package:AdminApp/pages/addDeliveryboy.dart';
import 'package:AdminApp/pages/bannerPage.dart';
import 'package:AdminApp/pages/cancellation_Route.dart';
import 'package:AdminApp/pages/createBanneer_page.dart';
import 'package:AdminApp/pages/deliverBoyProfile.dart';
import 'package:AdminApp/pages/deliveryBoy_page.dart';
import 'package:AdminApp/pages/editDeliveryboy.dart';
import 'package:AdminApp/pages/editRestaurant.dart';
import 'package:AdminApp/pages/feedbackTab.dart';
import 'package:AdminApp/pages/filterPage.dart';
import 'package:AdminApp/pages/home.dart';
import 'package:AdminApp/pages/homeTab.dart';

import 'package:AdminApp/pages/report.dart';
import 'package:AdminApp/pages/resetpassword.dart';
import 'package:AdminApp/pages/restaurant.dart';
import 'package:AdminApp/pages/verifyPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/theme/theme_bloc.dart';
import 'pages/about.dart';
import 'pages/feedback.dart';
import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, ThemeState themeState) {
          return initMaterialApp(themeState);
        },
      ),
    );
  }

  Widget initMaterialApp(ThemeState themeState) {
    return MaterialApp(
      theme: themeState.themeData,
      // theme: appThemes[AppThemes.OrangeTheme],
      initialRoute: '/',
      routes: {

        '/': (context) => RestaurantPage(),

      },
      debugShowCheckedModeBanner: false,
    );
  }
}
