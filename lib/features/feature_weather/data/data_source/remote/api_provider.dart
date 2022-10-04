import 'package:be_senior/core/utils/constants.dart';
import 'package:dio/dio.dart';

class ApiProvider {
  final Dio _dio = Dio();
  var apiKey = Constants.apiKey1;

  /// current weather api call
  Future<dynamic> callCurentWeather(cityName) async {
    var response = await _dio.get('${Constants.baseUrl}/data/2.5/weather',
        queryParameters: {'q': cityName, 'appid': apiKey, 'units': 'metric'});
    print(response.data);
    return response;
  }
}
