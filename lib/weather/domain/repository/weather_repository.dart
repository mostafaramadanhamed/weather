import 'package:weatherc/weather/domain/entities/weather.dart';

abstract class WeatherRepository{
 Future<Weather> getWeatherByCityName(String cityName);
}