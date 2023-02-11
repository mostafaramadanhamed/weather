import 'package:weatherc/weather/data/datasource/remote_datasource.dart';
import 'package:weatherc/weather/domain/entities/weather.dart';
import 'package:weatherc/weather/domain/repository/weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);
  @override
  Future<Weather> getWeatherByCityName(String countryName)async {
    return  (await baseRemoteDataSource.getWeatherByCityName(countryName));
  }


}