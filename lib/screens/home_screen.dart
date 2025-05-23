import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../utils/size_config.dart';
import '../widgets/home_header.dart';
import '../widgets/home_items_grid.dart';
import '../widgets/home_options.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mqw = MediaQuery.of(context).size.width;
    final isMobile = mqw < SizeConfig.mobile;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: HomeHeader(),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04,
                vertical: isMobile ? 16 : 20,
              ),
              sliver: MultiSliver(
                children: [
                  SliverPinnedHeader(
                    child: HomeOptions(),
                  ),
                  SliverToBoxAdapter(child: SizedBox(height: isMobile ? 19 : 24)),
                  SliverPadding(
                    padding: EdgeInsets.only(bottom: isMobile ? 19 : 0),
                    sliver: SliverFillRemaining(
                      child: HomeItemsGrid(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
