import 'package:agripro_connect/constants/values.dart';
import 'package:agripro_connect/widgets/navbar.dart';
import 'package:agripro_connect/widgets/sections/cta.dart';
import 'package:agripro_connect/widgets/sections/features.dart';
import 'package:agripro_connect/widgets/sections/footer.dart';
import 'package:agripro_connect/widgets/sections/heros.dart';
import 'package:agripro_connect/widgets/sections/logos_list.dart';
import 'package:agripro_connect/widgets/sections/singles.dart';
import 'package:agripro_connect/widgets/sections/stats.dart';
import 'package:agripro_connect/widgets/sections/testimonials.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.white,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(72.0),
        child: Center(
          child: SizedBox(width: size.width * 0.7, child: const NavBar()),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Heros(),        // Hero Section (banner or key message)
           // LogosList(),    // Partners or key sponsors logos
            Features(),     // Updated Features Section
            Testimonials(), // Testimonials from users
            Stats(),        // App Statistics
            Single5(),
            Single6(),
            Cta(),          // Call to Action (like "Get Started" button)
            Footer(),       // Footer with links to social media, contact, etc.
          ],
        ),
      ),
    );
  }
}
