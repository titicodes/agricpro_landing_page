import 'package:agripro_connect/app_theme.dart';
import 'package:agripro_connect/constants/values.dart';
import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 60),
            Text('Tailor-made features', style: textTheme.displayMedium),
            const SizedBox(height: 20),
            Text(
              'Optimized solutions for farmers, agronomists, and agribusiness professionals.',
              style: lead1,
            ),
            const SizedBox(height: 8),
            Text(
              'Empowering you to increase yields, improve plant health, and connect with markets.',
              style: lead1,
            ),
            const SizedBox(height: 48),
            Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon1),
                    title: 'AI-Powered Diagnostics',
                    description:
                        'Diagnose plant diseases using AI and computer vision technology.\nReal-time identification for faster solutions.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon2),
                    title: 'Market Connectivity',
                    description:
                        'Access local markets and connect with buyers, distributors, and agronomists through our platform.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon3),
                    title: 'Expert Consultations',
                    description:
                        'Get professional advice from agronomy experts for improving your farm’s productivity and sustainability.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon4),
                    title: 'Sustainable Farming',
                    description:
                        'Receive recommendations and best practices to promote sustainable and eco-friendly farming techniques.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon5),
                    title: 'Predictive Analytics',
                    description:
                        'Leverage data-driven insights to optimize yield and plan better for the next planting season.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon6),
                    title: 'Real-time Monitoring',
                    description:
                        'Monitor soil health and climate conditions using IoT sensors, ensuring a healthy crop environment.',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
          ],
        ),
      ],
    );
  }
}

class FeatureItem extends StatelessWidget {
  const FeatureItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    this.width,
    this.height,
  });

  final String title;
  final Widget icon;
  final String description;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: width,
      height: height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const SizedBox(height: 24),
          Text(title, style: textTheme.headlineSmall),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
