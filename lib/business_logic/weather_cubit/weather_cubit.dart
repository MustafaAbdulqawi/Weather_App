import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:http/http.dart' as http;
import 'package:new_project/data/models/weather_response.dart';

import '../../data/remote/requests/weather_requests.dart';
part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());
  static WeatherCubit get(context) => BlocProvider.of<WeatherCubit>(context);
  void refresh(){
    emit(Refresh());
  }
  WeatherResponse weatherResponse = WeatherResponse();
  void getWeather(){

    emit(WeatherLoadingState());

    WeatherRequest().weatherRequest(apiKey: '8KDMZ4AUK357TNCWLAWFTYBE3').then((value) {
      weatherResponse = value;
      emit(UsersSuccessState());
    }).catchError((error){
      emit(UsersErrorState());
    });
  }
}
