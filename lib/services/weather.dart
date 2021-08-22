import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = "9aee3787830d449954e3d00d30d0f583";

class WeatherModel {
  Future<dynamic> getLocationWeather({String cityName}) async {
    Location location = Location();
    await location.getCurrentLocation();
    // latitude = location.latitude;
    // longitude = location.longitude;
    // print(latitude);
    // print(longitude);
    var url = Uri.http(
      "api.openweathermap.org",
      "/data/2.5/weather",
      {
        // "lat": longitude,
        // "lon": latitude,
        "q": (cityName ?? "Paradip"),
        "appid": apiKey,
        "units": 'metric'
      },
    );
    NetworkHelper networkHelper = NetworkHelper(url);
    var weatherData = await networkHelper.getData_01();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
