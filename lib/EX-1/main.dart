import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("My Hobbies", style: TextStyle(fontSize: 20),),
        centerTitle: false,
        backgroundColor: const Color.fromARGB(255, 230, 206, 182),
      ),
      body: Padding(
    
        padding: const EdgeInsets.all(40),
        child: Column(
          spacing: 10,
          children: [
            HobbyCard(text: "Travelling", color: Colors.green, icon:Icons.travel_explore ,),
            HobbyCard(text: "Skating", color: Colors.blueGrey, icon:Icons.skateboarding ,),
            
            ],
        ),
      ),
    ),
  ),
);

class HobbyCard extends StatelessWidget {
  const new({super.key, required this.color, required this.text, required this.icon});

  final String text;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              Icon(icon, color:Colors.white,size: 25,),
              const SizedBox(width: 20,),
              Text(text, style: TextStyle(fontSize: 25, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
