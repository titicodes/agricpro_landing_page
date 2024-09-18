import 'package:agripro_connect/app_theme.dart';
import 'package:agripro_connect/constants/values.dart';
import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  const Stats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: size.width / 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Our Achievements in Agriculture',
                  style: textTheme.displayMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  'Over the years, Agripro Connect has made significant contributions to agriculture, improving productivity and crop health.',
                  style: lead1,
                ),
              ],
            ),
          ),
          const SizedBox(width: 30),
          const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  StatsSegment(
                    icon: ImagePath.featureIcon3,
                    title: '5,000+',
                    subtitle: 'Farms connected',
                  ),
                  SizedBox(width: 30),
                  StatsSegment(
                    icon: ImagePath.featureIcon1,
                    title: '1 Million',
                    subtitle: 'Successful crop diagnoses',
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  StatsSegment(
                    icon: ImagePath.featureIcon2,
                    title: '700+',
                    subtitle: 'Expert consultations',
                  ),
                  SizedBox(width: 90),
                  StatsSegment(
                    icon: ImagePath.featureIcon7,
                    title: '120',
                    subtitle: 'Countries impacted',
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class StatsSegment extends StatelessWidget {
  const StatsSegment({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(icon),
        const SizedBox(width: 16),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: textTheme.headlineMedium),
            Text(subtitle, style: textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
