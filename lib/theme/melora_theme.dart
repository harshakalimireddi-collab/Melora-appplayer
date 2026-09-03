import 'package:shadcn_flutter/shadcn_flutter.dart';

// ─── Melora Design System: Obsidian Aurora Glass ───────────────────────────

class MeloraColors {
  MeloraColors._();

  // Base surfaces
  static const bg = Color(0xFF050814);
  static const surface0 = Color(0xFF090D1A);
  static const surface1 = Color(0xFF0E1224);
  static const surface2 = Color(0xFF141827);
  static const surface3 = Color(0xFF1A1F30);

  // Glass layers
  static const glass10 = Color(0x1AFFFFFF);
  static const glass06 = Color(0x0FFFFFFF);
  static const glassStroke = Color(0x18FFFFFF);

  // Aurora accents
  static const accent = Color(0xFF7C5CFC);
  static const accentSoft = Color(0xFF9B7DFF);
  static const accentDim = Color(0xFF4A35B0);
  static const accentGlow = Color(0x197C5CFC);
  static const accentGlowStrong = Color(0x337C5CFC);

  // Aurora secondary
  static const aurora1 = Color(0xFF4F6EF7);
  static const aurora2 = Color(0xFF38BEFF);
  static const aurora3 = Color(0xFF8B5CF6);

  // Text hierarchy
  static const textPrimary = Color(0xFFF0F0F8);
  static const textSecondary = Color(0xFFAAAAAE);
  static const textTertiary = Color(0xFF666680);
  static const textMuted = Color(0xFF444460);

  // Functional
  static const separator = Color(0x14FFFFFF);
  static const overlay = Color(0xCC050814);
}

class MeloraRadius {
  MeloraRadius._();
  static const double xs = 6;
  static const double sm = 10;
  static const double md = 14;
  static const double lg = 18;
  static const double xl = 24;

  static BorderRadius get xsBr => BorderRadius.circular(xs);
  static BorderRadius get smBr => BorderRadius.circular(sm);
  static BorderRadius get mdBr => BorderRadius.circular(md);
  static BorderRadius get lgBr => BorderRadius.circular(lg);
  static BorderRadius get xlBr => BorderRadius.circular(xl);
}

class MeloraTextStyle {
  MeloraTextStyle._();

  static const TextStyle brand = TextStyle(
    fontFamily: 'Cookie',
    fontSize: 26,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    color: MeloraColors.textPrimary,
  );

  static const TextStyle h1 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.6,
    color: MeloraColors.textPrimary,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.3,
    color: MeloraColors.textPrimary,
  );

  static const TextStyle sectionLabel = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2,
    color: MeloraColors.textTertiary,
  );

  static const TextStyle body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: MeloraColors.textPrimary,
  );

  static const TextStyle bodyMd = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: MeloraColors.textPrimary,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: MeloraColors.textSecondary,
  );

  static const TextStyle trackTitle = TextStyle(
    fontSize: 14.5,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.2,
    color: MeloraColors.textPrimary,
  );

  static const TextStyle trackArtist = TextStyle(
    fontSize: 12.5,
    fontWeight: FontWeight.w400,
    color: MeloraColors.textSecondary,
  );
}

/// Minimal dark glass container — no heavy backdrop blur
class MeloraGlassBox extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final Color? color;
  final bool showBorder;

  const MeloraGlassBox({
    super.key,
    required this.child,
    this.padding,
    this.borderRadius,
    this.color,
    this.showBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color ?? MeloraColors.surface1,
        borderRadius: borderRadius ?? MeloraRadius.mdBr,
        border: showBorder
            ? Border.all(color: MeloraColors.glassStroke, width: 0.5)
            : null,
        boxShadow: const [
          BoxShadow(
            color: Color(0x18000000),
            blurRadius: 16,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}

/// Pill-style nav item with animated active state
class MeloraNavPill extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const MeloraNavPill({
    super.key,
    required this.icon,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 160),
        curve: Curves.easeOut,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 9),
        decoration: BoxDecoration(
          color: isActive ? MeloraColors.accentGlow : Colors.transparent,
          borderRadius: MeloraRadius.smBr,
          border: isActive
              ? Border.all(color: MeloraColors.accentGlowStrong, width: 0.5)
              : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 16,
              color: isActive
                  ? MeloraColors.accentSoft
                  : MeloraColors.textSecondary,
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 13.5,
                  fontWeight:
                      isActive ? FontWeight.w600 : FontWeight.w400,
                  color: isActive
                      ? MeloraColors.textPrimary
                      : MeloraColors.textSecondary,
                  letterSpacing: -0.1,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
