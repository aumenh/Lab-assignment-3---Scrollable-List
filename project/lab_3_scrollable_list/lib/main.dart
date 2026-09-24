import 'package:flutter/material.dart';

class Affirmation {
  final String image;
  final String description;

  Affirmation({
    required this.image,
    required this.description,
  });
}

void main() {
  runApp(const AffirmationsApp());
}

class AffirmationsApp extends StatelessWidget {
  const AffirmationsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Affirmations App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const AffirmationsScreen(),
    );
  }
}

class AffirmationsScreen extends StatelessWidget{
  const AffirmationsScreen({super.key});

  final List<Affirmation> affirmations = const[];

  List<Affirmation> getAffirmations() {
    return [
      Affirmation(
        image: 'assets/images/image1.jpg',
        description: 'I am capable of my goals.',
      ),
      Affirmation(
        image: 'assets/images/image2.jpg',
        description: 'Every day, I can grow.',
      ),
      Affirmation(
        image: 'assets/images/image3.jpg',
        description: 'Every step I take brings me closer to my dreams.',
      ),
      Affirmation(
        image: 'assets/images/image4.jpg',
        description: 'The past is what makes me grow and learn, not define me.',
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    final List<Affirmation> affirmations = getAffirmations();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Affirmations'),
      ),
      body: ListView.builder(
        itemCount: affirmations.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8),
            elevation: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  affirmations[index].image,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    affirmations[index].description,
                    style: const TextStyle(
                      fontSize:18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}