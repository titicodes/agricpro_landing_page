import 'package:agripro_connect/app_theme.dart';
import 'package:agripro_connect/constants/values.dart';
import 'package:agripro_connect/widgets/navbar.dart';
import 'package:flutter/material.dart';


class Cta extends StatelessWidget {
  const Cta({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    final ctaWidth = size.width * 0.7;

    return ClipRRect(
      child: Container(
        width: size.width,
        height: size.height / 2,
        color: AppColors.turquoise,
        child: Center(
          child: SizedBox(
            width: ctaWidth,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: ctaWidth * 0.45,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Optimize Your Farming with Agripro Connect',
                        style: textTheme.displayMedium,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Download Agripro Connect to diagnose plant diseases, get expert '
                        'advice, and connect to local markets and distributors. Make informed '
                        'decisions with real-time insights and data-driven solutions!',
                        style: lead2,
                      ),
                      const SizedBox(height: 4),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Get the App', style: textTheme.titleMedium),
                          const SizedBox(height: 8),
                          const ImageLinks() // Placeholder for Playstore and Appstore links.
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: ctaWidth * 0.45,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Align(
                        alignment: const Alignment(-0.7, -0.99),
                        child: SizedBox(
                          width: (ctaWidth * 0.4) * 0.5,
                          child: Image.asset(ImagePath.phoneMockup2), // Replace with actual app mockups
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0.8, 1),
                        child: Transform.translate(
                          offset: const Offset(0.0, 80.0),
                          child: SizedBox(
                            width: (ctaWidth * 0.4) * 0.5,
                            child: Image.asset(ImagePath.phoneMockup), // Replace with actual app mockups
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
