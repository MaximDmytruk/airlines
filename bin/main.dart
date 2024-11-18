import 'package:dio/dio.dart';
import 'airlines.dart';
import 'dart:convert';
import 'hellpers.dart';

Future<List<Airlines>> getAirlines() async {
  final List<Airlines> listOfAirlines = [];

  final Dio dio = Dio();
  final String url = 'https://api.instantwebtools.net/v1/airlines/';

  try {
    final Response<String> response = await dio.get(url);
    final String responseString =
        fromNullableToString(response.data.toString());
    final List<dynamic> airlinesDynamicList = jsonDecode(responseString);

    // for (var element in airlinesDynamicList) {
    //   Airlines newAirline = Airlines.fromJson(element);
    //   listOfAirlines.add(newAirline);
    // }

    for (var i = 0; i < 10; i++) {
      Airlines newAirline = Airlines.fromJson(airlinesDynamicList[i]);
      listOfAirlines.add(newAirline);
    }
  } catch (e) {
    print('Помилка - $e');
  }
  return listOfAirlines;
}

void main() async {
  List<Airlines> airlines = [];
  airlines = await getAirlines();

  for (var element in airlines) {
    print('The slogan of ${element.name}');
    print('"${element.slogan}"');
    print('');
  }
}
