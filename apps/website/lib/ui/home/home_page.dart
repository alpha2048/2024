import 'package:conference_2024_website/ui/components/button/app_button.dart';
import 'package:conference_2024_website/ui/components/contents_margin/contents_margin.dart';
import 'package:conference_2024_website/ui/home/components/background/background_bottom.dart';
import 'package:conference_2024_website/ui/home/components/background/background_top.dart';
import 'package:conference_2024_website/ui/home/components/title_and_logo.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Stack(
            children: [
              _Background(),
              _Body(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;
    final l10n = L10n.of(context)!;
    return ContentsMargin(
      child: Column(
        children: [
          const TitleAndLogo(),
          Text(
            l10n.title,
            style: textTheme.headline,
          ),
          const SizedBox(height: 16),
          AppButton.primaryLink(
            label: const Text('Click me!'),
            link: Uri.parse('/sample-1'),
            leading: const Icon(Icons.link),
          ),
          const SizedBox(height: 16),
          AppButton.secondaryLink(
            label: const Text('Click me!'),
            link: Uri.parse('/sample-2'),
            leading: const Icon(Icons.link),
          ),
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BackgroundTop(),
        BackgroundBottom(),
      ],
    );
  }
}
