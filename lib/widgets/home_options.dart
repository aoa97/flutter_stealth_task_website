import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:separated_row/separated_row.dart';

import '../utils/app_assets.dart';
import '../utils/app_colors.dart';
import '../utils/size_config.dart';

class HomeOptions extends StatelessWidget {
  const HomeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final mqw = MediaQuery.of(context).size.width;
    final isMobile = mqw < SizeConfig.mobile;

    return Container(
      color: AppColors.dark,
      padding: EdgeInsets.symmetric(vertical: isMobile ? 5.5 : 16.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Items",
            style: TextStyle(fontSize: isMobile ? 24 : 32),
          ),
          if (!isMobile)
            IntrinsicHeight(
              child: SeparatedRow(
                separatorBuilder: (_, __) => Container(
                  width: 1,
                  color: AppColors.darkGray,
                  margin: EdgeInsets.symmetric(horizontal: 14),
                ),
                children: [
                  IconButton.filled(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                      backgroundColor: AppColors.extraDarkGray,
                      padding: EdgeInsets.all(12),
                    ),
                    icon: SvgPicture.asset(AppAssets.iconsSliders),
                  ),
                  FilledButton.icon(
                    onPressed: () {},
                    label: Text("Add a New Item"),
                    icon: SvgPicture.asset(AppAssets.iconsPlus),
                    style: FilledButton.styleFrom(
                      minimumSize: Size(177, 48),
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
