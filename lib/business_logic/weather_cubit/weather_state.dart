part of 'weather_cubit.dart';

abstract class WeatherState {}

class WeatherInitial extends WeatherState {}
class WeatherLoadingState extends WeatherState {}
class UsersSuccessState extends WeatherState {}
class UsersErrorState extends WeatherState {}
class Refresh extends WeatherState {}
