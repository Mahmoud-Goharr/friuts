import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friuts/constants.dart';
import 'package:friuts/core/services/shared_preferences_singleton.dart';
import 'package:friuts/core/utils/app_text_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.backgroundimg,
    required this.isVisible,
  });

  final Widget title;
  final String description;
  final String image;
  final String backgroundimg;
  final bool isVisible; // Add a property to indicate if it's the last page

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
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
                Visibility(
                  visible:
                      isVisible, // Adjust the condition based on your needs
                  child: GestureDetector(
                    onTap: () {
                      prehs.setbool(kIsOnBoardingViewSeen, true);
                      // Navigate to the login view when the button is pressed
                      Navigator.of(context).pushReplacementNamed('loginView');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'تخط',
                        style: TextStyles.regular16.copyWith(
                          color: const Color(0xFF949D9E),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 64),
          title,
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: Text(
              description,
              style: TextStyles.semiBold13.copyWith(
                color: const Color(0xFF4E5556),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
