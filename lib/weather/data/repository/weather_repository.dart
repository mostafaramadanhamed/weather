import 'package:weatherc/weather/data/datasource/remote_datasource.dart';
import 'package:weatherc/weather/domain/entities/weather.dart';
import 'package:weatherc/weather/domain/repository/weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{
  final RemoteDataSource remoteDataSource;

  WeatherRepository(this.remoteDataSource);
  @override
  Future<Weather> getWeatherByCityName(String countryName)async {
    return  (await remoteDataSource.getWeatherByCityName(countryName))!;
  }


}