import 'package:dio/dio.dart';

import '../Data/data.dart';
import '../Utilities/logger.dart';

class CountryCodeService {
  static final Dio _dio = Dio();
  static Future<Response?> get(String path) async {
    try {
      return await _dio.get(path);
    } on DioError catch (e) {
      logger.e('DIO_ERROR ::: ', e);
    }
    return null;
  }

  static Future<List<Country>> getCountryCodes() async {
    final res = get('https://restcountries.com/v3.1/all?fields=name,idd,flag');
    // logger.wtf('Country codes response : ${(await res)}');

    return res.then((value) {
      if (value == null) {
        return [];
      }
      final List<Country> countries = [];
      for (var item in value.data) {
        countries.add(Country.fromJson(item));
      }
      return countries;
    });
  }
}
