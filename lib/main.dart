import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Starbucks',
      home: Siren(),
    );
  }
}

class Siren extends StatelessWidget {
  const Siren({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbucks',
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 255, 240, 213),
                            Color.fromARGB(255, 219, 233, 255)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: Colors.transparent,
                        shadowColor: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  "assets/logo.png",
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Siren',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Mythological Figure and icon of Starbucks. Passionate about brewing the perfect cup of coffee every day.',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  // color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ProfilePage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Go to Profile',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 48,
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Image.asset(
                          "assets/logo.png",
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Siren',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'I am a mythological figure and icon of Starbucks. I am passionate about brewing the perfect cup of coffee every day.',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'History',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'I have been working in the coffee industry for over 5 years, specializing in brewing the perfect cup of coffee.',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Skills',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '• Dart\n• Flutter\n• JavaScript\n• Python\n• Java',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
