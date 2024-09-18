import 'package:agripro_connect/constants/values.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: 72.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add some padding to avoid content touching edges
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Logo(),
                  const SizedBox(width: 10.0), // Reduce spacing between logo and items
                  Flexible(child: _buildItems(textTheme, size)),
                ],
              ),
            ),
            const Flexible(child: ImageLinks()), // Make image links flexible
          ],
        ),
      ),
    );
  }

  Widget _buildItems(TextTheme textTheme, Size size) {
    return size.width < 600
        ? SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: _navItems(textTheme),
            ),
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: _navItems(textTheme),
          );
  }

  List<Widget> _navItems(TextTheme textTheme) {
    return [
      Text('About', style: textTheme.bodyMedium),
      const SizedBox(width: 10.0), // Reduce spacing between items
      Text('Products', style: textTheme.bodyMedium),
      const SizedBox(width: 10.0),
      Text('Blog', style: textTheme.bodyMedium),
      const SizedBox(width: 10.0),
      Text('Jobs', style: textTheme.bodyMedium),
      const SizedBox(width: 10.0),
      Flexible(child: _buildMore(textTheme)),
    ];
  }

  Row _buildMore(TextTheme textTheme) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('More', style: textTheme.bodyMedium),
        const Padding(
          padding: EdgeInsets.only(bottom: 4.0),
          child: Icon(Icons.expand_more, size: 20.0),
        ),
      ],
    );
  }
}

class ImageLinks extends StatelessWidget {
  const ImageLinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(ImagePath.googlePlay, width: 100), // Adjust width for better fit
        const SizedBox(width: 12.0),
        Image.asset(ImagePath.appStore, width: 100),
      ],
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(ImagePath.logo, width: 100), // Adjust logo size
        const SizedBox(width: 10.0),
       // Text('AgriPro Connect', style: textTheme.titleMedium),
      ],
    );
  }
}
