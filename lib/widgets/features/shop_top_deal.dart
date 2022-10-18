import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class TopDealWidget extends StatelessWidget {
  const TopDealWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 5 / 4,
        ),
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 232, 232, 232),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.freepnglogos.com%2Fuploads%2Fsuit-png%2Fsuit-hall-madden-2.png&f=1&nofb=1&ipt=9eff742e232875e886c4e6e6489865bf4f39047d35187b5fbd852fb39cee84b6&ipo=images',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                      'SUITS\nOffice Life',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 232, 232, 232),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://pluspng.com/img-png/clothing-hd-png-model-png-hd-png-image-600.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                      'Dress\nElegent Design',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 232, 232, 232),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 3.0),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fpluspng.com%2Fimg-png%2Fwatch-png-hd-watch-free-download-png-png-image-2000.png&f=1&nofb=1&ipt=9e2e0367b9e3cd299f52a4bf9b293c3749385488adcc54f565f5ccf5c8907842&ipo=images',
                      fit: BoxFit.cover,
                      width: 100,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                      '| WATCHED\n  Premium',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 232, 232, 232),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CachedNetworkImage(
                      width: 100,
                      imageUrl:
                          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.freepnglogos.com%2Fuploads%2Fshoes-png%2Fdownload-nike-shoes-transparent-png-for-designing-projects-16.png&f=1&nofb=1&ipt=4322745a45151fa430771144e9ad24217b5287d86b9ea0657a2782021f29b1fb&ipo=images',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                      '| KICKS\n  Sporty',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
