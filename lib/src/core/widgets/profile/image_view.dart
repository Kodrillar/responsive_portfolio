import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/rounded_container.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const RoundedContainer(
      image: DecorationImage(
        image: AssetImage('assets/images/dp.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }
}
