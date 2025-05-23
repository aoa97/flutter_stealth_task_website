import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:separated_row/separated_row.dart';

import '../utils/app_assets.dart';
import '../utils/app_colors.dart';
import 'home_header_nav.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final mqw = MediaQuery.of(context).size.width;
    final isMenuLayout = mqw <= 960;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: mqw * 0.04),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.darkGray, width: 1)),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            if (isMenuLayout) ...[
              SvgPicture.asset(AppAssets.iconsMenu),
              Gap(16),
            ],
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: SvgPicture.asset(AppAssets.imagesLogo),
            ),
            Spacer(),
            SeparatedRow(
              separatorBuilder: (_, __) => Container(
                width: 1,
                height: 22,
                color: AppColors.darkGray,
                margin: EdgeInsets.symmetric(horizontal: isMenuLayout ? 12 : 24),
              ),
              children: [
                if (!isMenuLayout) FlutterHeaderNav(),
                Row(
                  spacing: isMenuLayout ? 12 : 24,
                  children: [
                    GestureDetector(onTap: () {}, child: SvgPicture.asset(AppAssets.iconsSettings)),
                    GestureDetector(onTap: () {}, child: SvgPicture.asset(AppAssets.iconsBell)),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(AppAssets.imagesAvatar),
                    if (!isMenuLayout) ...[
                      Gap(12),
                      Row(
                        children: [
                          Text(
                            "John Doe",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.light,
                            ),
                          ),
                          Gap(4),
                          SvgPicture.asset(AppAssets.iconsChevronDown),
                        ],
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
