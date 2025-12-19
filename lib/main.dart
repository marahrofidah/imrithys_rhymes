import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  ImageCache().maximumSize = 100 * 1024 * 1024; // 100 MB
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imrithys Rhymes',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Section

                // Top Bar with Logo, Title, and Profile
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Info Icon
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xFFB3D9F2),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/icons/info_ic.png',
                          fit: BoxFit.contain,
                          scale: 1.5,
                        ),
                      ),
                      // Logo Text
                      Column(
                        children: [
                          Text(
                            'Imrithys',
                            style: TextStyle(
                              color: const Color(0xFF65A6F1),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Rhymes',
                            style: TextStyle(
                              color: const Color(0xFF65A6F1),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      // Profile Photo
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey.shade300,
                            width: 2,
                          ),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/profil.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Greeting Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFF65A6F1),
                        const Color(0xFF65A6F1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Assalamualaikum, pidaa',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Siap mendalukan\nbait hari ini?',
                              style: TextStyle(
                                color: Colors.white.withValues(alpha: 0.9),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Character placeholder
                      Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Image.asset(
                          'assets/images/person.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                // Focus Track Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.orange.shade400, Colors.orange.shade600],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Focus Track',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Stay on track dengan Quiz harian + Hafalan Gogal senali, baik ke hari 2',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.9),
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Progress Bar
                      Container(
                        height: 28,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFE74C3C),
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            Positioned(
                              left: 50,
                              top: 0,
                              bottom: 0,
                              child: Row(
                                children: [
                                  Container(
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF39C12),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                    height: 28,
                                    child: Image.asset(
                                      'assets/images/fire.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Text(
                                '50/254',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                // Rhymes Activity Title
                const Text(
                  'Rhymes Activity',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                // Activity Cards Grid
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  children: [
                    // Dengarkan Syair Card
                    ActivityCard(
                      backgroundColor: Colors.deepPurple.shade400,
                      imagePath: 'assets/images/earphone.png',
                      title: 'Dengarkan\nSyair',
                    ),
                    // Setor Hafalan Card
                    ActivityCard(
                      backgroundColor: Colors.pink.shade400,
                      imagePath: 'assets/images/setor.png',
                      title: 'Setor\nHafalan',
                    ),
                    // Kerjakan Quiz Card
                    ActivityCard(
                      backgroundColor: Colors.cyan.shade400,
                      imagePath: 'assets/images/quiz.png',
                      title: 'Kerjakan\nQuiz',
                    ),
                    // Pelajari Kitab Imrithi Card
                    ActivityCard(
                      backgroundColor: Colors.amber.shade400,
                      imagePath: 'assets/images/kitab.png',
                      title: 'Pelajari\nKitab Imrithi',
                    ),
                  ],
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.description), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: ''),
        ],
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation
        },
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  final Color backgroundColor;
  final String imagePath;
  final String title;

  const ActivityCard({
    super.key,
    required this.backgroundColor,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 56, height: 56, fit: BoxFit.contain),
          const SizedBox(height: 16),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
