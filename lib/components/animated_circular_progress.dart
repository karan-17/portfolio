import 'package:flutter/material.dart';
import '../../../constants.dart';

class AnimatedCircularProgress extends StatelessWidget {
  const AnimatedCircularProgress({
    super.key,
    required this.perc,
    required this.label,
  });
  final double perc;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: perc),
            duration: defaultDuration,
            builder: (context, perc, child) =>
                Stack(fit: StackFit.expand, children: [
                  CircularProgressIndicator(
                    value: perc,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                  Center(
                    child: Text(
                      '${(perc * 100).toInt()}%',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ]),
          ),
        ),
        SizedBox(height: defaultPadding / 2),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}