import 'package:agripro_connect/app_theme.dart';
import 'package:agripro_connect/constants/values.dart';
import 'package:flutter/material.dart';

class Single5 extends StatelessWidget {
  const Single5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 64,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Container(
              width: size.width * 0.25,
              height: size.height / 2,
              decoration: BoxDecoration(
                color: AppColors.turquoise.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    top: 30,
                    left: (size.width * 0.25) * 0.06,
                    child: Image.asset(ImagePath.phoneMockup2, height: 300,), // Change image to an agricultural-themed mockup
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 30),
          SizedBox(
            width: size.width / 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Optimize Your Crop Management', style: textTheme.displaySmall),
                const SizedBox(height: 30),
                Text(
                  'Leverage cutting-edge AI technology to monitor plant health, optimize watering schedules, and improve crop yield with real-time diagnostics. Agripro Connect empowers farmers to make data-driven decisions and maximize productivity.',
                  style: lead1,
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Get Started',
                          style: largeLabel.copyWith(color: AppColors.turquoise)),
                      const SizedBox(width: 8),
                      Image.asset(ImagePath.arrowRightIcon),
                    ],
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


class Single6 extends StatelessWidget {
  const Single6({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    final singleWidth = size.width * 0.7;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 64.0),
      child: SizedBox(
        width: singleWidth,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: singleWidth * 0.4,
                  child: Text('Unlock Precision Agriculture',
                      style: textTheme.displaySmall),
                ),
                SizedBox(
                  width: singleWidth * 0.5,
                  child: Text(
                    'Agripro Connect provides tools for real-time monitoring of your crops, including soil moisture levels, plant health, and weather conditions. Make better decisions with our data insights and forecasting tools to boost crop production.',
                    style: lead1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 48),
            Flexible(
              child: SizedBox(
                width: singleWidth,
                height: 400,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset(ImagePath.logo), // Replace with an agriculture-themed cover image
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
