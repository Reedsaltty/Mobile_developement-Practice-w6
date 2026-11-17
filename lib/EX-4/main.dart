import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: const Color.fromARGB(179, 226, 231, 218),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            const Row(
              spacing: 15,
              children: [
                Text(
                  "Weather",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight(700),
                    fontSize: 45,
                  ),
                ),
                Icon(Icons.cloud, color: Color.fromARGB(255, 0, 0, 0)),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.menu, color: Colors.black),
                ),
              ],
            ),
            Text(
              "Thu, 12 November",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight(300)),
            ),
            
             const SizedBox(height: 30),
            WeatherBox(
              cityName: "PhnomPenh",
              weather: "Cloudy",
              temperature: 12.2,
              minTempurature: 10.0,
              maxTempearture: 30.0,
              assetPath: "assets/ex4/cloudy.png",
              topLeftGradient: Color(0xFFC084FC),
              bottomRightGradient: Color.fromARGB(255, 89, 36, 193),
            ),
            const SizedBox(height: 20),
            WeatherBox(
              cityName: "Paris",
              weather: "Sunny Cloudy",
              temperature: 22.2,
              minTempurature: 10.0,
              maxTempearture: 40.0,
              assetPath: "assets/ex4/sunnyCloudy.png",
              topLeftGradient: Color(0xFF6EE7C7),
              bottomRightGradient: Color.fromARGB(255, 9, 112, 90),
            ),
            const SizedBox(height: 20),
            WeatherBox(
              cityName: "Rome",
              weather: "Sunny",
              temperature: 45.2,
              minTempurature: 10.0,
              maxTempearture: 40.0,
              assetPath: "assets/ex4/sunny.png",
              topLeftGradient: Color(0xFFF472A0),
              bottomRightGradient: Color.fromARGB(255, 198, 25, 68),
            ),
            const SizedBox(height: 20),
            WeatherBox(
              cityName: "Toulouse",
              weather: "Very Cloudy",
              temperature: 45.2,
              minTempurature: 10.0,
              maxTempearture: 40.0,
              assetPath: "assets/ex4/veryCloudy.png",
              topLeftGradient: Color(0xFFF2B27A),
              bottomRightGradient: Color.fromARGB(255, 198, 140, 77),
            ),
          ],
        ),
      ),
    ),
  ),
);

class WeatherBox extends StatelessWidget {
  const WeatherBox({super.key,required this.cityName,required this.weather,required this.temperature,required this.minTempurature,required this.maxTempearture,required this.assetPath, required this.bottomRightGradient, required this.topLeftGradient});
  final String cityName;
  final String weather;
  final double temperature;
  final double minTempurature;
  final double maxTempearture;
  final String assetPath;
  final Color topLeftGradient;
  final Color bottomRightGradient;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [topLeftGradient, bottomRightGradient],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cityName,
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                    Text(
                      weather,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                    Text(
                      "$temperature",
                      style: TextStyle(
                        fontSize: 55,
                        color: Colors.white,
                        fontWeight: FontWeight(900),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 10,
                      color: Colors.white.withValues(alpha: 0.3),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,

                    child: Image.asset(
                      assetPath,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
              ],
            ),

            Row(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Min $minTempurature°C",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight(600),
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 10,
                        constraints: BoxConstraints(
                          minWidth: 0,
                          maxWidth: double.infinity,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Max $maxTempearture°C",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight(600),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
