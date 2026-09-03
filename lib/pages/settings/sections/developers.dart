import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' show ListTile;
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:melora/collections/routes.gr.dart';
import 'package:melora/collections/melora_icons.dart';
import 'package:melora/modules/settings/section_card_with_heading.dart';
import 'package:melora/extensions/context.dart';

class SettingsDevelopersSection extends HookWidget {
  const SettingsDevelopersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCardWithHeading(
      heading: context.l10n.developers,
      children: [
        ListTile(
          leading: const Icon(MeloraIcons.logs),
          title: Text(context.l10n.logs),
          trailing: const Icon(MeloraIcons.angleRight),
          onTap: () {
            context.navigateTo(const LogsRoute());
          },
        )
      ],
    );
  }
}
