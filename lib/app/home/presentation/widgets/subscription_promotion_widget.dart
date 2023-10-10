import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubscriptionPromotionWidget extends StatelessWidget {
  const SubscriptionPromotionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            color: const Color(0XFFFFE3B3),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ganhe 40% Off',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(
                            fontWeight: FontWeight.w800,
                            color: const Color(0XFF9C6300)),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'No seu 1° ano de assinatura',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(
                            fontWeight: FontWeight.w700,
                            color: const Color(0XFF9C6300)),
                  ),
                ],
              ),
              SvgPicture.asset('assets/books.svg'),
            ],
          ),
        ),
      ),
    );
  }
}