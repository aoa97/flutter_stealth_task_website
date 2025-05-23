import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../utils/app_colors.dart';

class FlutterHeaderNav extends StatelessWidget {
  const FlutterHeaderNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 26),
      child: Row(
        spacing: 32,
        children: [
          ...[
            (title: "Items", active: true),
            (title: "Pricing", active: false),
            (title: "Info", active: false),
            (title: "Tasks", active: false),
            (title: "Analytics", active: false),
          ].map(
            (e) => HookBuilder(
              builder: (context) {
                final hover = useState(false);
                final active = e.active;

                return MouseRegion(
                  onEnter: (_) => hover.value = true,
                  onExit: (_) => hover.value = false,
                  cursor: SystemMouseCursors.click,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      border: active ? Border(bottom: BorderSide(color: AppColors.primary, width: 2)) : null,
                    ),
                    child: Column(
                      children: [
                        Text(
                          e.title,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: active ? FontWeight.w500 : FontWeight.normal,
                            color: () {
                              if (active) {
                                return AppColors.light;
                              }

                              if (hover.value) {
                                return AppColors.primary;
                              }

                              return AppColors.gray;
                            }(),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
