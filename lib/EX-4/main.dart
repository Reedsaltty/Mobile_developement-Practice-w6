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
                    color:  Color.fromARGB(255, 0, 0, 0),
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
            const SizedBox(height: 30,),
            WeatherBox(),
          ],
        ),
      ),
    ),
  ),
);

class WeatherBox extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF5B21B6), Color(0xFF9D2FD1)],
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
                      "Tokyo",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                    Text(
                      "Partly Cloud",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                    Text(
                      "18.4°C",
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
                      'assets/ex4/cloudy.png',
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
                  "Min 12°C",
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
                  "Max 24°C",
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
