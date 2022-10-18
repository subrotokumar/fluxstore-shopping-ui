import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShopMainCorousel extends StatefulWidget {
  const ShopMainCorousel({super.key});

  @override
  State<ShopMainCorousel> createState() => _ShopMainCorouselState();
}

class _ShopMainCorouselState extends State<ShopMainCorousel> {
  int currentIndex = 0;
  var pageController = PageController();
  List<String> imgList = [
    'https://i.pinimg.com/564x/02/cf/cf/02cfcffac595c832c514d58704cd82ce.jpg',
    'https://i.pinimg.com/564x/3f/50/dc/3f50dc11de0c352f8ef7d5e046e476ee.jpg',
    'https://i.pinimg.com/564x/65/56/3f/65563f700f70bb90e71e094d6a7efb7a.jpg',
    'https://i.pinimg.com/564x/fe/39/79/fe3979d9b3c7dfa4419c116082a6c844.jpg'
  ];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemCount: imgList.length,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: CachedNetworkImage(
                  imageUrl: imgList[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () => pageController
                  .jumpToPage((currentIndex - 1) % imgList.length),
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey.withOpacity(0.3),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () => pageController
                  .jumpToPage((currentIndex + 1) % imgList.length),
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey.withOpacity(0.3),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < imgList.length; i++)
                  buildIndicator(currentIndex == i),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget buildIndicator(bool isSelected) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
    height: 2,
    width: 16,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(10),
      color: isSelected ? Colors.black : Colors.grey,
    ),
  );
}
