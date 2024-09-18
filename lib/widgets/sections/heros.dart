import 'package:agripro_connect/constants/values.dart';
import 'package:flutter/material.dart';

class Heros extends StatelessWidget {
  const Heros({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImagePath.background, // Add a relevant agricultural or nature-based background
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 90),
          SizedBox(
            width: size.width * 0.7,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(flex: 2, child: _buildContent(textTheme)),
                Flexible(child: Image.asset(ImagePath.phoneMockup, height: 400,)), // Add a phone mockup that shows the Agripro Connect app interface
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _buildContent(TextTheme textTheme) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(height: 90),
        Text('Optimize Your Farm.', style: textTheme.displayLarge),
        const SizedBox(height: 30),
        Text('Grow More, Worry Less.', style: textTheme.displayLarge),
        const SizedBox(height: 50),
        TextButton(
          onPressed: () {
            // Add your link to the signup or relevant page
          },
          style: TextButton.styleFrom(
            foregroundColor: AppColors.white,
            backgroundColor: AppColors.pastelGreen, // Updated to a green to reflect agriculture
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 24,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: Text(
            'Get Started',
            style: textTheme.titleSmall!.copyWith(color: AppColors.white),
          ),
        )
      ],
    );
  }
}
