import 'package:amorim_smart_elearning/app/home/presentation/widgets/app_bar_home_widget.dart';
import 'package:amorim_smart_elearning/app/home/presentation/widgets/custom_bottom_nav_item_widget.dart';
import 'package:amorim_smart_elearning/app/home/presentation/widgets/filter_text_field_widget.dart';
import 'package:amorim_smart_elearning/app/home/presentation/widgets/subscription_promotion_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarHomeWidget(
        userName: 'Thiago A.',
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 12,
        unselectedFontSize: 0,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: CustomBottomNavItemWidget(
              icon: Icons.home_outlined,
              iconSelected: Icons.home,
              label: 'Início',
              isSelected: currentIndex == 0,
              colorScheme: Theme.of(context).colorScheme,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CustomBottomNavItemWidget(
              icon: Icons.favorite_border,
              iconSelected: Icons.favorite,
              label: 'Favoritos',
              isSelected: currentIndex == 1,
              colorScheme: Theme.of(context).colorScheme,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CustomBottomNavItemWidget(
              icon: Icons.person_outline_rounded,
              iconSelected: Icons.person,
              label: 'Perfil',
              isSelected: currentIndex == 2,
              colorScheme: Theme.of(context).colorScheme,
            ),
            label: '',
          ),
        ],
      ),
      body: const Padding(
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
