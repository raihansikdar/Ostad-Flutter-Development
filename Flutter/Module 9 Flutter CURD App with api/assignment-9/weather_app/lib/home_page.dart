import 'dart:convert';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  WeatherModel? _weatherModel;
  String city = "Dhaka";
  bool isLoading = false;
  
  @override
  void initState() {
    super.initState();
    getWeatherData();
  }

  void getWeatherData() async {
    isLoading = true;
    setState(() {});


     String apiKey = "7aab710a86685861591af59d2f4baf20";
    var url =
        "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      _weatherModel = WeatherModel.fromJson(responseData);
      setState(() {});
    } else {
      throw Exception("Error getting weather");
    }

    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Flutter Weather"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings),),
          IconButton(onPressed: (){}, icon: Icon(Icons.add),),
        ],
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Text(
                      "$city",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Updated: ${DateFormat.jm().format(DateTime.now())}",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/images/weather_image.png",
                        height: 50,
                        width: 50,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.image,
                            size: 32,
                          );
                        },
                      ),
                      Text(
                        " ${_weatherModel?.temp}°C",
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Column(
                        children: [
                          Text(
                            "max : ${_weatherModel?.tempMax}°",
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(
                            "min:  ${_weatherModel?.tempMin}°",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "${_weatherModel?.description ?? " "}",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
    );
  }
}
