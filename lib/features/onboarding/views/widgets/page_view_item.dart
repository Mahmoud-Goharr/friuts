import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.backgroundimg,
  });

  final Widget title;
  final String description;
  final String image;
  final String backgroundimg;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundimg, fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Center(child: SvgPicture.asset(image)),
              ),
              Padding(padding: const EdgeInsets.all(21.0), child: Text('تخط')),
            ],
          ),
        ),

        SizedBox(height: 64),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Text(description, textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
