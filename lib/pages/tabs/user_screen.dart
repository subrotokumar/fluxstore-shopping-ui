import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
                            style:
                                TextStyle(color: Colors.orange, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Divider(
          //   thickness: 1,
          //   color: Colors.blue,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Earn with Us',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),
          Row(
            children: [
              const Icon(
                Icons.discount,
                color: Colors.blue,
              ),
              const SizedBox(width: 10),
              const Text('Refer & Earn'),
              Expanded(child: Container()),
              const Icon(Icons.arrow_forward_ios, size: 20)
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(
                Icons.shop,
                color: Colors.blue,
              ),
              const SizedBox(width: 10),
              const Text(
                'Sell on Fluxstore',
                textAlign: TextAlign.left,
              ),
              Expanded(child: Container()),
              const Icon(Icons.arrow_forward_ios, size: 20)
            ],
          ),
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Feedback & information',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),
          Row(
            children: [
              const Icon(
                Icons.document_scanner,
                color: Colors.blue,
              ),
              const SizedBox(width: 10),
              const Text('Terms, Policies and Licenses'),
              Expanded(child: Container()),
              const Icon(Icons.arrow_forward_ios, size: 20)
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(
                Icons.question_mark_rounded,
                color: Colors.blue,
              ),
              const SizedBox(width: 10),
              const Text(
                'Browse FAQs',
                textAlign: TextAlign.left,
              ),
              Expanded(child: Container()),
              const Icon(Icons.arrow_forward_ios, size: 20)
            ],
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            height: 30,
            child:
                ElevatedButton(onPressed: () {}, child: const Text('Log Out')),
          )
        ],
      ),
    );
  }
}
