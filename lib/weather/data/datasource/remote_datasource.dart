import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weatherc/core/utils/constant.dart';
import 'package:weatherc/weather/data/model/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCityName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCityName(String countryName) async {
    try {
      var response = await Dio().get(
        '${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.apiKey}',
      );
      debugPrint(response.data);
      return WeatherModel.fromJson(json.decode(response.data));
    } catch (e) {
     debugPrint(e.toString());
      return null;
    }
  }
}
