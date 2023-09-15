import 'package:flutter/material.dart';
import 'package:new_project/business_logic/weather_cubit/weather_cubit.dart';
import 'package:new_project/core/screens.dart' as screens;
import 'package:new_project/data/models/weather_response.dart';
import 'package:new_project/presentation/screens/weather.dart';

import '../screens/home_layout.dart';
import '../screens/splash_screen.dart';
class AppRouter {
  late Widget startScreen;

  Route? onGenerateRoute(RouteSettings settings){
    startScreen = const Weather();

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => startScreen);
      case screens.homeLayout:
        return MaterialPageRoute(builder: (_) => const HomeLayout());
        case screens.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
        case screens.weather:
          // WeatherResponse response = settings.arguments as WeatherResponse;
          return MaterialPageRoute(builder: (_) =>  const Weather());
      default:
        return null;
    }
  }
}