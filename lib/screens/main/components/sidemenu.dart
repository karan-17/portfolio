import 'package:flutter/material.dart';

import '../../../components/animated_circular_progress.dart';
import '../../../components/animated_linear_progress.dart';
import '../../../constants.dart';
import 'area_info.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(children: [
        MyInfo(),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                AerialInfo(
                  title: 'Residence',
                  text: 'India',
                ),
                AerialInfo(
                  title: 'City',
                  text: 'Delhi',
                ),
                AerialInfo(
                  title: 'Age',
                  text: '20',
                ),
                Divider(),
                SkillSet(),
                Divider(),
                CodingSkills(),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class CodingSkills extends StatelessWidget {
  const CodingSkills({
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
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedLinearProgress(
          skill: 'C++',
          perc: 0.75,
        ),
        const AnimatedLinearProgress(
          skill: 'Dart',
          perc: 0.65,
        ),
        const AnimatedLinearProgress(
          skill: 'JavaScript',
          perc: 0.6,
        ),
        const AnimatedLinearProgress(
            perc: 0.85,
            skill: 'HTML'
        ),
        const AnimatedLinearProgress(
            perc: 0.75,
            skill: 'CSS'
        ),
        const AnimatedLinearProgress(
          skill: 'Python',
          perc: 0.6,
        ),
      ],
    );
  }
}

