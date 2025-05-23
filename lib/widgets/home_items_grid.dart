import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';

import '../models/home_grid_item_model.dart';
import '../utils/app_assets.dart';
import '../utils/size_config.dart';
import 'home_items_grid_item.dart';

class HomeItemsGrid extends StatelessWidget {
  static final items = [
    HomeGridItemModel(
      title: "Item title",
      time: "Long item title highlighti...",
      image: AppAssets.imagesCover1,
    ),
    HomeGridItemModel(
      title: "Long item title highlighti...",
      time: "5 Nights (Jan 16 - Jan 20, 2024) ",
      image: AppAssets.imagesCover2,
      isMinUsers: true,
    ),
    HomeGridItemModel(
      title: "Item title",
      time: "5 Nights (Jan 16 - Jan 20, 2024) ",
      image: AppAssets.imagesCover1,
    ),
    HomeGridItemModel(
      title: "Item title",
      time: "5 Nights (Jan 16 - Jan 20, 2024) ",
      image: AppAssets.imagesCover3,
    ),
    HomeGridItemModel(
      title: "Item title",
      time: "5 Nights (Jan 16 - Jan 20, 2024) ",
      image: AppAssets.imagesCover1,
    ),
    HomeGridItemModel(
      title: "Item title",
      time: "5 Nights (Jan 16 - Jan 20, 2024) ",
      image: AppAssets.imagesCover1,
    ),
    HomeGridItemModel(
      title: "Item title",
      time: "5 Nights (Jan 16 - Jan 20, 2024) ",
      image: AppAssets.imagesCover2,
    ),
    HomeGridItemModel(
      title: "Item title",
      time: "5 Nights (Jan 16 - Jan 20, 2024) ",
      image: AppAssets.imagesCover1,
    ),
  ];

  const HomeItemsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicHeightGridView(
      crossAxisCount: SizeConfig.adaptiveValue(
        context,
        mobile: 1,
        tablet: 2,
        largeTablet: 3,
        desktop: 4,
        largeDesktop: 5,
      ),
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      itemCount: 8,
      builder: (_, index) {
        final item = items[index];

        return HomeItemsGridItem(item: item);
      },
    );
  }
}
