import 'package:flutter/material.dart';
import 'package:slide_bar_animation/screens/home.dart';
import 'package:slide_bar_animation/screens/my_account.dart';
import 'package:slide_bar_animation/screens/my_orders.dart';
import 'package:slide_bar_animation/screens/settings.dart';
import 'package:slide_bar_animation/screens/wishlist.dart';

import 'custom_slider_bar.dart';

void main() => runApp(
      SafeArea(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "/",
          //onGenerateRoute: routeSettings,
          routes: {
            'My Orders': (context) => const BaseWidget(child: MyOrders()),
            'My Account': (context) => const BaseWidget(child: MyAccount()),
            'Settings': (context) => const BaseWidget(child: Settings()),
            'WishList': (context) => const BaseWidget(child: WishList()),
            "/": (context) => const BaseWidget(child: Home())
          },

          // builder: (context, child) => BaseWidget(
          //   child: child ?? const WishList(),
          // ),
        ),
      ),
    );

class BaseWidget extends StatelessWidget {
  final Widget child;
  const BaseWidget({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          child,
          const CustomSliderBar(),
        ],
      ),
    );
  }
}

Route routeSettings(RouteSettings settings) {
  switch (settings.name) {
    case 'My Orders':
      return MaterialPageRoute(builder: (context) => const MyOrders());
    case 'My Account':
      return MaterialPageRoute(builder: (context) => const MyAccount());
    case 'Settings':
      return MaterialPageRoute(builder: (context) => const Settings());
    case 'WishList':
      return MaterialPageRoute(builder: (context) => const WishList());
    default:
      return MaterialPageRoute(builder: (context) => const Home());
  }
}
