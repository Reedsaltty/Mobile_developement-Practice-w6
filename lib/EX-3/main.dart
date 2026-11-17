import 'package:flutter/material.dart';

// ignore: constant_identifier_names
enum Product {
  DART(
    imagePath: 'assets/ex3/dart.png',
    title: "Dart",
    subTitle: "The best obj language",
  ),
  FLUTTER(
    imagePath: 'assets/ex3/flutter.png',
    title: "Flutter",
    subTitle: "The best mobile language",
  ),

  FIREBASE(
    imagePath: 'assets/ex3/firebase.png',
    title: "Firebase",
    subTitle: "The best cloud database",
  );

  final String imagePath;
  final String title;
  final String subTitle;

  const Product({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
}

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Products"),
        backgroundColor: const Color.fromARGB(255, 226, 178, 136),
        centerTitle: false,
      ),
      body: Padding(
        
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            ProductCard(product: Product.DART),
            ProductCard(product: Product.FLUTTER),
            ProductCard(product: Product.FIREBASE),
          ],
        ),
      ),
    ),
  ),
);

class ProductCard extends StatelessWidget {
  const new({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(product.imagePath, width: 100, height:  100 ,),
            Text(product.title),
            Text(product.subTitle),
          ],
        ),
      ),
    );
  }
}
