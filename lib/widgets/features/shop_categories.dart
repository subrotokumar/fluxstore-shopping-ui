import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ShopCategories extends StatelessWidget {
  const ShopCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 228, 222, 222),
                radius: 25,
                child: Image.asset('assets/icons/ic_shirt.png', height: 30),
              ),
              const SizedBox(height: 5),
              const Text(
                'Men',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 228, 222, 222),
                radius: 25,
                child: Image.asset('assets/icons/ic_women.png', height: 30),
              ),
              const SizedBox(height: 5),
              const Text(
                'Women',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 228, 222, 222),
                radius: 25,
                child: Image.asset('assets/icons/ic_shoes.png', height: 30),
              ),
              const SizedBox(height: 5),
              const Text(
                'Shoes',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 228, 222, 222),
                radius: 25,
                child: Image.asset('assets/icons/ic_bag.png', height: 30),
              ),
              const SizedBox(height: 5),
              const Text(
                'Bag',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 228, 222, 222),
                radius: 25,
                child: Image.asset('assets/icons/ic_hat.png', height: 30),
              ),
              const SizedBox(height: 5),
              const Text(
                'Hat',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
