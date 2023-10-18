import 'package:amorim_smart_elearning/app/favorites/favorites_page.dart';
import 'package:amorim_smart_elearning/app/home/presentation/home_page.dart';
import 'package:amorim_smart_elearning/app/home/presentation/widgets/custom_bottom_nav_item_widget.dart';
import 'package:amorim_smart_elearning/app/profile/profile_page.dart';
import 'package:flutter/material.dart';

enum PageType {
  home(
    pageLabel: 'Home',
    pageIcon: Icons.home_outlined,
    pageIconSelected: Icons.home,
  ),
  favorites(
    pageLabel: 'Favorites',
    pageIcon: Icons.favorite_border,
    pageIconSelected: Icons.favorite,
  ),
  profile(
    pageLabel: 'Profile',
    pageIcon: Icons.person_outline_rounded,
    pageIconSelected: Icons.person,
  );

  final String pageLabel;
  final IconData pageIcon;
  final IconData pageIconSelected;

  const PageType({
    required this.pageLabel,
    required this.pageIcon,
    required this.pageIconSelected,
  });
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageType currentPage = PageType.home;
  PageType? previousPage;
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  final List<PageType> pageTypes = PageType.values;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 12,
        unselectedFontSize: 0,
        currentIndex: currentPage.index,
        onTap: (index) {
          final selectedPage = pageTypes[index];
          if (currentPage != selectedPage) {
            previousPage = currentPage;
            setState(() {
              currentPage = selectedPage;
            });
            _navigatorKey.currentState!.pushReplacement(
              SlideRightRoute(
                page: getPageForType(selectedPage),
                directionToLeft: previousPage!.index < selectedPage.index,
              ),
            );
          }
        },
        items: pageTypes.map((pageType) {
          return BottomNavigationBarItem(
            icon: CustomBottomNavItemWidget(
              icon: pageType.pageIcon,
              iconSelected: pageType.pageIconSelected,
              label: pageType.pageLabel,
              isSelected: currentPage == pageType,
              colorScheme: Theme.of(context).colorScheme,
            ),
            label: '',
          );
        }).toList(),
      ),
      body: Navigator(
        key: _navigatorKey,
        initialRoute: '/',
        onGenerateRoute: (settings) {
          return SlideRightRoute(
            page: getPageForType(currentPage),
            directionToLeft: previousPage == null
                ? false
                : previousPage!.index < currentPage.index,
          );
        },
      ),
    );
  }

  Widget getPageForType(PageType type) {
    switch (type) {
      case PageType.home:
        return const HomePage();
      case PageType.favorites:
        return const FavoritesPage();
      case PageType.profile:
        return const ProfilePage();
    }
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  final bool directionToLeft;

  SlideRightRoute({required this.page, required this.directionToLeft})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin:
                    directionToLeft ? const Offset(1, 0) : const Offset(-1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
}
