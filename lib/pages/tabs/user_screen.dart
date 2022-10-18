import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            // color: Colors.green,
            border: Border.all(
              width: 1,
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              const CircleAvatar(
                radius: 30,
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
              const SizedBox(width: 20),
              const VerticalDivider(
                color: Color.fromARGB(255, 139, 182, 255), //color of divider
                width: 10, //width space of divider
                thickness: 3, //thickness of divier line
                indent: 10, //Spacing at the top of divider.
                endIndent: 10, //Spacing at the bottom of divider.
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'No User Logined',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Container(),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      border: Border.all(
                        width: 1,
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.receipt,
                          color: Colors.green,
                        ),
                        Text(
                          'Order',
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      border: Border.all(
                        width: 1,
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        Text(
                          'Favorite',
                          style: TextStyle(color: Colors.red, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.settings,
                          color: Colors.grey,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      border: Border.all(
                        width: 1,
                        color: Colors.orange,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.list,
                          color: Colors.orange,
                        ),
                        Text(
                          'Favorite',
                          style: TextStyle(color: Colors.orange, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
