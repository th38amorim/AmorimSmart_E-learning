import 'package:amorim_smart_elearning/app/home/presentation/widgets/app_bar_home_widget.dart';
import 'package:amorim_smart_elearning/app/home/presentation/widgets/filter_option_button.dart';
import 'package:amorim_smart_elearning/app/home/presentation/widgets/filter_text_field_widget.dart';
import 'package:amorim_smart_elearning/app/home/presentation/widgets/subscription_promotion_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum CourseFilter {
  all(label: 'All', icon: FontAwesomeIcons.fire),
  popular(label: 'Popular', icon: FontAwesomeIcons.star),
  newest(label: 'Newest', icon: FontAwesomeIcons.thumbsUp),
  free(label: 'Free', icon: FontAwesomeIcons.moneyBill);

  final String label;
  final IconData icon;

  const CourseFilter({
    required this.label,
    required this.icon,
  });
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CourseFilter selectedFilter = CourseFilter.all;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarHomeWidget(userName: 'Thiago A.'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              const FilterTextFieldWidget(),
              const SizedBox(height: 30),
              const SubscriptionPromotionWidget(),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Courses',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: const Color(0XFF3A3A3C),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: CourseFilter.values.map((filter) {
                        return FilterOptionButton(
                          label: filter.label,
                          isSelected: selectedFilter == filter,
                          icon: filter.icon,
                          onTap: () {
                            setState(() {
                              selectedFilter = filter;
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData getIconForFilter(CourseFilter filter) {
    switch (filter) {
      case CourseFilter.all:
        return FontAwesomeIcons.fire;
      case CourseFilter.popular:
        return Icons.star;
      case CourseFilter.newest:
        return FontAwesomeIcons.solidThumbsUp;
      default:
        return Icons.filter_list;
    }
  }
}
