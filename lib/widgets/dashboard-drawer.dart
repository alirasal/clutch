import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  final String name;
  final IconData leadingIcon;
  final IconData? endingIcon;
  final VoidCallback nav;
  final bool isSelected;

  const DrawerItems({
    super.key,
    required this.name,
    required this.leadingIcon,
    this.endingIcon,
    required this.nav,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final activeColor = theme.colorScheme.primary;
    final inactiveColor = theme.colorScheme.onSurfaceVariant;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      // Material wrapper provides the ripple effect background clipping
      child: Material(
        color: isSelected
            ? activeColor.withValues(alpha: 0.12)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: nav,
          splashColor: activeColor.withValues(alpha: 0.1),
          highlightColor: activeColor.withValues(alpha: 0.05),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            child: Row(
              children: [
                Icon(
                  leadingIcon,
                  size: 22,
                  color: isSelected ? activeColor : inactiveColor,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: isSelected
                          ? FontWeight.w600
                          : FontWeight.w500,
                      color: isSelected
                          ? activeColor
                          : theme.colorScheme.onSurface,
                    ),
                  ),
                ),
                Icon(
                  endingIcon ?? Icons.arrow_forward_ios_rounded,
                  size: 16,
                  color: isSelected
                      ? activeColor
                      : inactiveColor.withValues(alpha: 0.6),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
