import 'package:flutter/material.dart';
import '../pages/page_one.dart';
import '../pages/tab_navigation.dart';
import '../widgets/custom_drawer.dart';

class HomeWithDrawer extends StatelessWidget {
  const HomeWithDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final userName = "Halo, Teman Teman Saya Anugrah 👋";

    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/nuga.jpg',
              ), // Ganti dengan profil asli jika ada
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userName,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            // 🔍 Search bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Cari menu...',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 24),

            // 🧭 Navigasi Grid
            Text(
              'Navigasi Utama',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 12),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildMenuCard(
                  context,
                  icon: Icons.layers,
                  label: 'Stack Navigation',
                  color: Colors.indigo,
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => PageOne()),
                      ),
                ),
                _buildMenuCard(
                  context,
                  icon: Icons.tab,
                  label: 'TabBar View',
                  color: Colors.orange,
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => TabNavigation()),
                      ),
                ),
              ],
            ),

            SizedBox(height: 32),

            // ⚡ Quick Access Section
            Text(
              'Quick Access',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 12),
            ListTile(
              leading: Icon(Icons.info_outline, color: Colors.green),
              title: Text('Tentang Aplikasi'),
              subtitle: Text('Informasi singkat aplikasi ini'),
              onTap: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              tileColor: Colors.grey[100],
            ),
            SizedBox(height: 12),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.blue),
              title: Text('Pengaturan'),
              subtitle: Text('Ubah preferensi aplikasi'),
              onTap: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              tileColor: Colors.grey[100],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: color),
            SizedBox(height: 12),
            Text(
              label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
