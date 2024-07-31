import 'package:flutter/material.dart';

class CustomSliderContents extends StatelessWidget {
  const CustomSliderContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff020C73),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    "https://thumbs.dreamstime.com/b/closeup-photo-amazing-macho-guy-friendly-smiling-colleagues-partners-young-promoted-chief-wear-specs-casual-denim-closeup-photo-165818151.jpg"),
              ),
              title: Text(
                "Any Name",
                textScaler: TextScaler.linear(2),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "anyemail@gmail.com",
                textScaler: TextScaler.linear(1.3),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Divider(
                color: Colors.white,
              ),
            ),
            MenuItem(
              onTap: () => Navigator.pushReplacementNamed(context, "/"),
              icon: Icons.home,
              name: "Home",
            ),
            MenuItem(
              onTap: () =>
                  Navigator.pushReplacementNamed(context, "My Account"),
              icon: Icons.person,
              name: "My Account",
            ),
            MenuItem(
              onTap: () => Navigator.pushReplacementNamed(context, "My Orders"),
              icon: Icons.shopping_bag_outlined,
              name: "My Orders",
            ),
            MenuItem(
              onTap: () => Navigator.pushReplacementNamed(context, "WishList"),
              icon: Icons.card_travel,
              name: "Wishlist",
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Divider(
                color: Colors.white,
              ),
            ),
            MenuItem(
              onTap: () => Navigator.pushReplacementNamed(context, "Settings"),
              icon: Icons.settings,
              name: "Settings",
            ),
            MenuItem(
              onTap: () {},
              icon: Icons.logout,
              name: "Log Out",
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String name;
  final VoidCallback onTap;
  const MenuItem({
    super.key,
    required this.icon,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          children: [
            Icon(
              icon,
              size: size.height * 0.04,
              color: const Color(0xff185EDE),
            ),
            SizedBox(
              width: size.width * 0.03,
            ),
            Text(
              name,
              textScaler: const TextScaler.linear(2),
              style: const TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
