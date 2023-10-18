import 'package:amorim_smart_elearning/app/home/presentation/widgets/app_bar_home_widget.dart';
import 'package:amorim_smart_elearning/app/home/presentation/widgets/filter_text_field_widget.dart';
import 'package:amorim_smart_elearning/app/home/presentation/widgets/subscription_promotion_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarHomeWidget(userName: 'Thiago A.'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            FilterTextFieldWidget(),
            SizedBox(height: 30),
            SubscriptionPromotionWidget()
          ],
        ),
      ),
    );
  }
}