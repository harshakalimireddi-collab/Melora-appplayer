import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:melora/collections/assets.gen.dart';
import 'package:melora/collections/env.dart';
import 'package:melora/components/button/back_button.dart';
import 'package:melora/components/image/universal_image.dart';
import 'package:melora/components/links/hyper_link.dart';
import 'package:melora/components/titlebar/titlebar.dart';
import 'package:melora/extensions/context.dart';
import 'package:melora/hooks/controllers/use_package_info.dart';
import 'package:melora/theme/melora_theme.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auto_route/auto_route.dart';

final _licenseProvider = FutureProvider<String>((ref) async {
  return await rootBundle.loadString("LICENSE");
});

@RoutePage()
class AboutMeloraPage extends HookConsumerWidget {
  static const name = "about";

  const AboutMeloraPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final packageInfo = usePackageInfo();
    final license = ref.watch(_licenseProvider);
    final theme = Theme.of(context);

    const colon = TableCell(child: Text(":"));

    return SafeArea(
      bottom: false,
      child: Scaffold(
        headers: const [
          TitleBar(
            leading: [BackButton()],
            title: Text("About Melora"),
          )
        ],
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            child: Column(
              children: [
                Center(
                  child: Assets.branding.meloraLogoPng.image(
                    height: 120,
                    width: 120,
                  ),
                ),
                const SizedBox(height: 12),
                const Center(
                  child: Text(
                    "Melora",
                    style: TextStyle(
                      fontFamily: 'Cookie',
                      fontSize: 34,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 2,
                      color: MeloraColors.textPrimary,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    "Next-Gen Open-Source Music Streaming",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: MeloraColors.textSecondary,
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // ── Developer Spotlight Card: Kalimireddi Harsha Vardhan ──
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 680),
                  child: MeloraGlassBox(
                    padding: const EdgeInsets.all(22),
                    borderRadius: MeloraRadius.lgBr,
                    color: MeloraColors.surface1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 52,
                              height: 52,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Color(0xFF7C5CFC), Color(0xFF38BEFF)],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF7C5CFC).withValues(alpha: 0.35),
                                    blurRadius: 16,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: const Center(
                                child: Text(
                                  "HV",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Kalimireddi Harsha Vardhan",
                                    style: TextStyle(
                                      color: MeloraColors.textPrimary,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                      letterSpacing: -0.2,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 2.5,
                                    ),
                                    decoration: BoxDecoration(
                                      color: MeloraColors.accentGlowStrong,
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                        color: MeloraColors.accentSoft.withValues(alpha: 0.4),
                                        width: 0.5,
                                      ),
                                    ),
                                    child: const Text(
                                      "Creator & Developer",
                                      style: TextStyle(
                                        color: MeloraColors.accentSoft,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 18),
                        Container(
                          height: 0.5,
                          color: MeloraColors.separator,
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          "I'm Harsha, the developer behind Melora. I built Melora around a simple belief: music should feel personal, beautiful, and free from distractions.",
                          style: TextStyle(
                            color: MeloraColors.textPrimary,
                            fontSize: 13.5,
                            height: 1.55,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "What started as a personal project to rethink the way I listen to music has grown into Melora — an ongoing journey of thoughtful design, experimentation, and engineering, all driven by one goal: creating a listening experience that feels truly yours.",
                          style: TextStyle(
                            color: MeloraColors.textSecondary,
                            fontSize: 13.5,
                            height: 1.55,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            color: MeloraColors.surface2,
                            borderRadius: MeloraRadius.smBr,
                            border: Border.all(
                              color: MeloraColors.glassStroke,
                              width: 0.5,
                            ),
                          ),
                          child: const Text(
                            "“Music should be free. The experience should be priceless.”",
                            style: TextStyle(
                              color: MeloraColors.textPrimary,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Wrap(
                          spacing: 10,
                          runSpacing: 8,
                          children: [
                            GestureDetector(
                              onTap: () => launchUrl(
                                Uri.parse("https://github.com/harshakalimireddi-collab"),
                                mode: LaunchMode.externalApplication,
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 7,
                                ),
                                decoration: BoxDecoration(
                                  color: MeloraColors.surface2,
                                  borderRadius: MeloraRadius.xsBr,
                                  border: Border.all(
                                    color: MeloraColors.glassStroke,
                                    width: 0.5,
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      FeatherIcons.github,
                                      size: 14,
                                      color: MeloraColors.accentSoft,
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      "GitHub",
                                      style: TextStyle(
                                        color: MeloraColors.textPrimary,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => launchUrl(
                                Uri.parse(
                                  "https://harshakalimireddi-collab.github.io/Melora-appplayer/",
                                ),
                                mode: LaunchMode.externalApplication,
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 7,
                                ),
                                decoration: BoxDecoration(
                                  color: MeloraColors.surface2,
                                  borderRadius: MeloraRadius.xsBr,
                                  border: Border.all(
                                    color: MeloraColors.glassStroke,
                                    width: 0.5,
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      FeatherIcons.globe,
                                      size: 14,
                                      color: MeloraColors.aurora2,
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      "Official Website",
                                      style: TextStyle(
                                        color: MeloraColors.textPrimary,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // ── Technical Metadata Table ──
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 680),
                  child: MeloraGlassBox(
                    padding: const EdgeInsets.all(18),
                    borderRadius: MeloraRadius.mdBr,
                    color: MeloraColors.surface0,
                    child: Table(
                      columnWidths: const {
                        0: FixedTableSize(110),
                        1: FixedTableSize(12),
                        2: IntrinsicTableSize(),
                      },
                      defaultRowHeight: const FixedTableSize(36),
                      rows: [
                        const TableRow(
                          cells: [
                            TableCell(child: Text("Creator")),
                            colon,
                            TableCell(
                              child: Hyperlink(
                                "Kalimireddi Harsha Vardhan",
                                "https://github.com/harshakalimireddi-collab",
                              ),
                            )
                          ],
                        ),
                        TableRow(
                          cells: [
                            TableCell(child: Text(context.l10n.version)),
                            colon,
                            TableCell(child: Text("v${packageInfo.version}"))
                          ],
                        ),
                        TableRow(
                          cells: [
                            TableCell(child: Text(context.l10n.channel)),
                            colon,
                            TableCell(child: Text(Env.releaseChannel.name))
                          ],
                        ),
                        TableRow(
                          cells: [
                            TableCell(child: Text(context.l10n.build_number)),
                            colon,
                            TableCell(
                              child: Text(packageInfo.buildNumber
                                  .replaceAll(".", " ")),
                            )
                          ],
                        ),
                        const TableRow(
                          cells: [
                            TableCell(child: Text("Website")),
                            colon,
                            TableCell(
                              child: Hyperlink(
                                "harshakalimireddi-collab.github.io/Melora-appplayer",
                                "https://harshakalimireddi-collab.github.io/Melora-appplayer/",
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          cells: [
                            TableCell(child: Text(context.l10n.repository)),
                            colon,
                            const TableCell(
                              child: Hyperlink(
                                "github.com/harshakalimireddi-collab/Melora-appplayer",
                                "https://github.com/harshakalimireddi-collab/Melora-appplayer",
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          cells: [
                            TableCell(child: Text(context.l10n.license)),
                            colon,
                            const TableCell(
                              child: Hyperlink(
                                "BSD-4-Clause",
                                "https://raw.githubusercontent.com/harshakalimireddi-collab/Melora-appplayer/main/LICENSE",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => launchUrl(
                      Uri.parse("https://discord.gg/uJ94vxB6vg"),
                      mode: LaunchMode.externalApplication,
                    ),
                    child: const UniversalImage(
                      path:
                          "https://discord.com/api/guilds/1012234096237350943/widget.png?style=banner2",
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  context.l10n.made_with,
                  textAlign: TextAlign.center,
                  style: theme.typography.small,
                ),
                Text(
                  context.l10n.copyright(DateTime.now().year),
                  textAlign: TextAlign.center,
                  style: theme.typography.small,
                ),
                const SizedBox(height: 20),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 750),
                  child: SafeArea(
                    child: license.when(
                      data: (data) {
                        return Text(
                          data,
                          style: theme.typography.small,
                        );
                      },
                      loading: () {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      error: (e, s) {
                        return Text(
                          e.toString(),
                          style: theme.typography.small,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
