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
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Info Icon
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xFFA3C7F0),
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
                  padding: const EdgeInsets.all(26),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFF65A6F1),
                        const Color(0xFF65A6F1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(50),
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
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Siap menaklukan bait hari ini?',
                              style: TextStyle(
                                color: Colors.white.withValues(alpha: 0.9),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Character placeholder
                      Container(
                        width: 100,
                        height: 110,
                        child: Image.asset(
                          'assets/images/person.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                // Focus Track Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(26),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFFFA231),
                        const Color(0xFFFFA231),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Focus Track',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Stay on track dengan Quiz harian + Hafalan Gagal sekali, baik ke hari awal 👀',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.9),
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Progress Bar with Fire Icon
                      Container(
                        height: 42,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child: Stack(
                          children: [
                            // Red progress fill
                            ClipRRect(
                              borderRadius: BorderRadius.circular(21),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                widthFactor: 0.5,
                                child: Container(
                                  color: const Color(0xFFE74C3C),
                                ),
                              ),
                            ),
                            // Orange progress fill
                            ClipRRect(
                              borderRadius: BorderRadius.circular(21),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                widthFactor: 0.7,
                                child: Container(
                                  color: const Color(0xFFF39C12),
                                ),
                              ),
                            ),
                            // Fire image at the end
                            Positioned(
                              right: 6,
                              top: -8,
                              bottom: -8,
                              child: SizedBox(
                                width: 100,
                                height: 100,
                                child: Image.asset(
                                  'assets/images/api.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            // Text centered
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 60.0),
                                child: Text(
                                  '50/254',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
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
                const SizedBox(height: 18),
                // Rhymes Activity Title
                const Text(
                  'Rhymes Activity',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 18),
                // Activity Cards Grid
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1.0,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 20),
          Image.asset(imagePath, width: 80, height: 80, fit: BoxFit.contain),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.1,
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
