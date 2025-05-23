import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../models/home_grid_item_model.dart';
import '../utils/app_assets.dart';
import '../utils/app_colors.dart';

class HomeItemsGridItem extends StatelessWidget {
  final HomeGridItemModel item;

  const HomeItemsGridItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColors.extraDarkGray,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Image.asset(
            item.image,
            fit: BoxFit.cover,
            width: double.infinity,
          ),

          PositionedDirectional(
            top: 8.35,
            end: 6.7,
            child: IconButton.filled(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: AppColors.dark.withOpacity(.6),
                padding: EdgeInsets.all(6),
              ),
              icon: SvgPicture.asset(AppAssets.iconsMoreHorizontal),
            ),
          ),

          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.extraDarkGray,
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.4, 1.0],
                  colors: [
                    AppColors.extraDarkGray,
                    Color.fromRGBO(0, 0, 0, 0),
                  ],
                ),
              ),
            ),
          ),

          // Content
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(MediaQuery.of(context).size.height * 0.18),

                // Status Badge
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: AppColors.dark.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.secondary),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppColors.secondary.withOpacity(0.1),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 6,
                      children: [
                        Text(
                          'Pending Approval',
                          style: TextStyle(fontSize: 14),
                        ),
                        SvgPicture.asset(AppAssets.iconsChevronDown2),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 18),

                Text(
                  item.title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18),
                ),

                SizedBox(height: 7),

                // Date
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Row(
                    spacing: 6,
                    children: [
                      SvgPicture.asset(AppAssets.iconsCalendar),
                      Text(
                        item.time,
                        style: TextStyle(fontSize: 12, color: AppColors.gray),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  height: 0.5,
                  margin: EdgeInsets.symmetric(vertical: 12),
                  color: AppColors.darkGray,
                ),

                // Avatars + Tasks
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage(AppAssets.imagesUser1),
                        ),
                        Positioned(
                          left: 12 * 1,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundImage: AssetImage(AppAssets.imagesUser2),
                          ),
                        ),
                        if (item.isMinUsers != true) ...[
                          Positioned(
                            left: 12 * 2,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage(AppAssets.imagesUsert3),
                            ),
                          ),
                          Positioned(
                            left: 12 * 3,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: AppColors.darkGray,
                              child: Text(
                                '+6',
                                style: TextStyle(
                                  fontSize: 8.4,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                    Text(
                      '4 unfinished tasks',
                      style: TextStyle(fontSize: 12, color: AppColors.gray),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
