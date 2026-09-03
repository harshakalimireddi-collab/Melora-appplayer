import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:melora/collections/assets.gen.dart';
import 'package:melora/collections/melora_icons.dart';
import 'package:melora/extensions/context.dart';
import 'package:melora/modules/getting_started/blur_card.dart';
import 'package:melora/utils/platform.dart';

class GettingStartedPageGreetingSection extends HookConsumerWidget {
  final VoidCallback onNext;
  const GettingStartedPageGreetingSection({super.key, required this.onNext});

  @override
  Widget build(BuildContext context, ref) {
    return Center(
      child: BlurCard(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.branding.meloraLogoPng.image(height: 200),
            const Gap(24),
            const Text("Melora").semiBold().h4(),
            const Gap(4),
            Text(
              kIsMobile
                  ? context.l10n.freedom_of_music_palm
                  : context.l10n.freedom_of_music,
              textAlign: TextAlign.center,
            ).light().large().italic(),
            const Gap(84),
            Button.primary(
              onPressed: onNext,
              trailing: const Icon(MeloraIcons.angleRight),
              child: Text(context.l10n.get_started),
            ),
          ],
        ),
      ),
    );
  }
}
