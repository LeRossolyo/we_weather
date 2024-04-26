import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_orkester_app/data/models/weather.daily.req.model.dart';
import 'package:weather_orkester_app/data/models/weather.daily.res.model.dart';
import 'package:weather_orkester_app/data/models/weather.req.model.dart';
import 'package:weather_orkester_app/data/models/weather.res.model.dart';
import 'package:weather_orkester_app/domain/dio.client.dart';

part 'weather.endpoints.g.dart';

@RestApi(parser: Parser.JsonSerializable)
@injectable
abstract class WeatherApi {
  @factoryMethod 
  factory WeatherApi(DioClient dio) => _WeatherApi(dio);

  @GET('/forecast')
  Future<WeatherResponseModel> getWeather(@Queries() WeatherRequestModel queries);

  @GET('/forecast')
  Future<WeatherDailyResponseModel> getDailyWeather(@Queries() WeatherDailyRequestModel queries);
}