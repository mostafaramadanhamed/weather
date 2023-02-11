import 'package:weatherc/core/utils/constant.dart';
import 'package:weatherc/weather/data/model/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel > getWeatherByCityName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel > getWeatherByCityName(String countryName) async {
    try {
      var response = await Dio().get(
        '${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.apiKey}',
        //https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
      );
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
     print(e);
      return WeatherModel(0, 'null', 'null', 'null', 0);
    }
  }
}
