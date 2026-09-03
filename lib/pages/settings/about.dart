import 'package:flutter/services.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:melora/collections/assets.gen.dart';
import 'package:melora/collections/env.dart';
import 'package:melora/components/button/back_button.dart';
import 'package:melora/components/image/universal_image.dart';
import 'package:melora/components/links/hyper_link.dart';
import 'package:melora/components/titlebar/titlebar.dart';
import 'package:melora/extensions/context.dart';
import 'package:melora/hooks/controllers/use_package_info.dart';

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
        headers: [
          TitleBar(
            leading: const [BackButton()],
            title: const Text("About Melora"),
          )
        ],
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Assets.branding.meloraLogoPng.image(
                  height: 200,
                  width: 200,
                ),
                Center(
                  child: Column(
                    children: [
                      const Text("Melora — An elegant, modern iOS music player experience").semiBold().large(),
                      const SizedBox(height: 20),
                      Table(
                        columnWidths: const {
                          0: FixedTableSize(95),
                          1: FixedTableSize(10),
                          2: IntrinsicTableSize(),
                        },
                        defaultRowHeight: const FixedTableSize(40),
                        rows: [
                          TableRow(
                            cells: [
                              const TableCell(child: Text("Creator")),
                              colon,
                              const TableCell(
                                child: Hyperlink(
                                  "Harsha Vardhan",
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
                                  "Melora.krtirtho.dev",
                                  "https://Melora.krtirtho.dev",
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
                                  "https://raw.githubusercontent.com/harshakalimireddi-collab/Melora-appplayer/master/LICENSE",
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            cells: [
                              TableCell(child: Text(context.l10n.bug_issues)),
                              colon,
                              const TableCell(
                                child: Hyperlink(
                                  "Discord#chat",
                                  "https://discord.gg/uJ94vxB6vg",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
