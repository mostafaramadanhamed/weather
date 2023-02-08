import 'package:flutter/material.dart';
import 'package:weatherc/weather/data/datasource/remote_datasource.dart';
import 'package:weatherc/weather/data/repository/weather_repository.dart';
import 'package:weatherc/weather/domain/entities/weather.dart';
import 'package:weatherc/weather/domain/repository/weather_repository.dart';
import 'package:weatherc/weather/domain/usecases/get_weather_by_country.dart';
import 'package:weatherc/weather/presentation/screens/test.dart';

void main() async{
BaseRemoteDataSource baseRemoteDataSource=RemoteDataSource();
BaseWeatherRepository baseWeatherRepository=
WeatherRepository(baseRemoteDataSource);
  Weather  weather =await GetWeatherByCountryName(baseWeatherRepository).execute('Egypt');
print(weather);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Test(),
    );
  }
}