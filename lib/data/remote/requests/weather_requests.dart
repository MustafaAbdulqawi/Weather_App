import 'package:dio/dio.dart';

import '../../../core/constants_methods.dart';
import '../../../core/end_points.dart';
import '../../models/weather_response.dart';
import '../data_providers/my_dio.dart';

class WeatherRequest{
  Future weatherRequest({
    required String apiKey
  }) async{
    try{
      Response response = await MyDio.getData(
          endPoint: other,
          query: {
            'api_key': apiKey,
          }
      );
      printTest('weatherRequestStatusCode ${response.statusCode}');
      printResponse('weatherResponse ${response.data}');
      return WeatherResponse.fromJson(response.data);
    }catch(error){
      printError('weatherRequest $error');
    }
  }
}