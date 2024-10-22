import 'package:flutter/material.dart';
import 'package:siren/form.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Profile', home: const FormPage(), routes: {
      '/main': (context) => const Siren(
            username: '',
            role: '',
            school: '',
            description: '',
          ),
    });
  }
}

class Siren extends StatelessWidget {
  final String username;
  final String role;
  final String school;
  final String description;

  const Siren({
    super.key,
    required this.username,
    required this.role,
    required this.school,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(

          preferredSize: const Size.fromHeight(70.0),
          child: ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFB22627), Color(0xFFF05D5E)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: AppBar(
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  icon: const Icon(Icons.logout),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FormPage()),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.jpg'),
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
                        color: Colors.white
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
                                  "assets/logo.jpeg",
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                username,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                role,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                description,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                school,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                ),
                                textAlign: TextAlign.center,
                              ),
                              // const SizedBox(height: 20),
                              // ElevatedButton(
                              //   style: ElevatedButton.styleFrom(
                              //     backgroundColor: Colors.red,
                              //     // color: Colors.white,
                              //   ),
                              //   onPressed: () {
                              //     Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) => const ProfilePage(),
                              //       ),
                              //     );
                              //   },
                              //   child: const Text(
                              //     'Go to Profile',
                              //     style: TextStyle(
                              //       fontSize: 16,
                              //       fontFamily: 'Roboto',
                              //       color: Colors.white,
                              //     ),
                              //   ),
                              // ),
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

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile'),
//       ),
//       body: Stack(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/bg2.jpg'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: ListView(
//               children: [
//                 Column(
//                   children: [
//                     CircleAvatar(
//                       radius: 48,
//                       backgroundColor: Colors.white,
//                       child: ClipOval(
//                         child: Image.asset(
//                           "assets/logo.png",
//                           width: 90,
//                           height: 90,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     const Text(
//                       'Vincensius Marcel Suhendar',
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: 'Roboto',
//                         color: Colors.white,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20),
//                 Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: const Padding(
//                     padding: EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'About',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: 'Roboto',
//                           ),
//                         ),
//                         SizedBox(height: 10),
//                         Text(
//                           'I am an aspiring student who wishes to become the absolute best version of myself.',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontFamily: 'Roboto',
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: const Padding(
//                     padding: EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'History',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: 'Roboto',
//                           ),
//                         ),
//                         SizedBox(height: 10),
//                         Text(
//                           'I have been attending SMK Wikrama learning web and game development for the past 2 years, and have real work experience as an intern in Argenta.',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontFamily: 'Roboto',
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: const Padding(
//                     padding: EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Skills',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: 'Roboto',
//                           ),
//                         ),
//                         SizedBox(height: 10),
//                         Text(
//                           '• Laravel\n• Python\n• Javascript\n• Express\n• Vue\n• Tailwind\n• Flutter\n• MySQL\n• PostgreSQL\n• C#\n• Photoshop\n• Unity\n\n And the ability to learn more.',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontFamily: 'Roboto',
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
