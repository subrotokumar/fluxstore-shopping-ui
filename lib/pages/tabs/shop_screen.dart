import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluxstore/widgets/features/shop_categories.dart';
import 'package:fluxstore/widgets/features/shop_main_carousel.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Shop Categories Section
        ShopCategories(),
        const SizedBox(height: 16),
        // Main Page Corousel
        ShopMainCorousel(),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          height: 160,
          color: Colors.blueAccent,
          child: CachedNetworkImage(
            imageUrl:
                'https://i.pinimg.com/564x/cf/b9/a6/cfb9a672f931adba094315cd9844fa26.jpg',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'Explore Top Deals',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black54,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: MediaQuery.of(context).size.height - 400,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 5 / 4,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 232, 232, 232),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
