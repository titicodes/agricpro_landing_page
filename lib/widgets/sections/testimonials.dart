import 'package:agripro_connect/app_theme.dart';
import 'package:agripro_connect/constants/values.dart';
import 'package:flutter/material.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      height: size.height - 100,
      color: AppColors.turquoise.shade100,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: const Alignment(-0.57, -0.75),
            child: Image.asset(ImagePath.quoteMark),
          ),
          Align(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Success Stories from Our Farmers',
                      style: textTheme.displayMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Learn how Agripro Connect has transformed lives.',
                      style: lead1,
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: Testimony(
                        width: size.width * 0.17,
                        icon: ImagePath.featureIcon4,
                        message:
                            'Agripro Connect has completely changed the way I manage my crops. '
                            'The diagnostics feature helped me identify and treat issues in my tomato crops quickly.',
                        writtenBy: 'John Doe',
                        jobTitle: 'Tomato Farmer, Nigeria',
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Testimony(
                      width: size.width * 0.22,
                      icon: ImagePath.featureIcon3,
                      message:
                          'As a farm consultant, Agripro Connect gives me the tools to advise my clients more efficiently. '
                          'The precision diagnostics is a game changer!',
                      writtenBy: 'Sarah Lee',
                      jobTitle: 'Agricultural Consultant, Nigeria',
                    ),
                    const SizedBox(height: 20),
                    Testimony(
                      width: size.width * 0.17,
                      icon: ImagePath.featureIcon2,
                      message:
                          'Agripro Connect has simplified farm management and increased productivity. It’s an essential tool for any farmer.',
                      writtenBy: 'Peter Johnson',
                      jobTitle: 'Maize Farmer, Nigeria',
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

class Testimony extends StatelessWidget {
  const Testimony({
    Key? key,
    required this.icon,
    required this.message,
    required this.writtenBy,
    required this.jobTitle,
    this.width,
    this.height,
  }) : super(key: key);

  final String icon;
  final String message;
  final String writtenBy;
  final String jobTitle;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(icon),
          const SizedBox(height: 20),
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Image.asset(
                    ImagePath.quoteMark,
                    width: 16,
                    height: 14,
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: width != null ? width! * 0.7 : 100,
                  child: Text(
                    message,
                    softWrap: true,
                    style: lead1.copyWith(
                      letterSpacing: 0.5,
                      height: 1.0,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(writtenBy, style: textTheme.titleMedium),
                Text(
                  jobTitle,
                  style: lead2.copyWith(color: AppColors.gray.shade700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
