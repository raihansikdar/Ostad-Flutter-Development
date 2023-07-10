class WeatherModel {
  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final String description;

  WeatherModel({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.description,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      temp: json['main']['temp'].toDouble(),
      feelsLike: json['main']['feels_like'].toDouble(),
      tempMin: json['main']['temp_min'].toDouble(),
      tempMax:json['main']['temp_max'].toDouble(),
      description: json['weather'][0]['description'],
    );
  }
}
