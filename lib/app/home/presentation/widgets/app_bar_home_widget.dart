import 'package:flutter/material.dart';

class AppBarHomeWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHomeWidget({
    super.key,
    required this.userName,
  });

  final String userName;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Olá,',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w700, color: const Color(0XFF616C7A)),
            ),
            Text(
              userName,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.w800, color: const Color(0XFF344356)),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: SizedBox(
            height: 54,
            width: 54,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/profile.png'),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}