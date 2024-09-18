import 'package:flutter/material.dart';
import '../../constants/values.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      color: AppColors.black,
      child: Center(
        child: SizedBox(
          width: size.width * 0.7,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 56),
            child: DefaultTextStyle.merge(
              style: textTheme.bodyLarge!.copyWith(color: AppColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(ImagePath.logo,height: 50,width: 70,), // Use Agripro Connect logo here
                      const SizedBox(height: 24),
                      const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Download Now'),
                          SizedBox(width: 24),
                          Text('License'),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('About'),
                          SizedBox(width: 24),
                          Text('Features'),
                          SizedBox(width: 24),
                          Text('Pricing'),
                          SizedBox(width: 24),
                          Text('Careers'),
                          SizedBox(width: 24),
                          Text('Help'),
                          SizedBox(width: 24),
                          Text('Privacy Policy'),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Text(
                        '© 2024 Agripro Connect. All rights reserved',
                        style: textTheme.bodyMedium!.copyWith(
                          color: AppColors.gray.shade300,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Get the App',
                        style: textTheme.titleSmall!.copyWith(
                          color: AppColors.gray.shade300,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Image.asset(ImagePath.appStore), // PlayStore icon link for Agripro Connect
                      const SizedBox(height: 16),
                      Image.asset(ImagePath.googlePlay), // AppStore icon link for Agripro Connect
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
