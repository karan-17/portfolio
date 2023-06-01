import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../components/animated_circular_progress.dart';

class SkillSet extends StatelessWidget {
  const SkillSet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AnimatedCircularProgress(
                perc: 0.8,
                label: 'Flutter',
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgress(
                perc: 0.75,
                label: 'Firebase',
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgress(
                perc: 0.65,
                label: 'Dart',
              ),
            ),
          ],
        ),
      ],
    );
  }
}