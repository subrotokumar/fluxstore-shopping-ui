import 'package:flutter/material.dart';
import 'package:fluxstore/services/providers/product_provider.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var controller = TextEditingController();
  var productProvider;
  bool isLoading = false;

  @override
  void initState() {
    productProvider = Provider.of<ProductProvider>(context, listen: false);
    productProvider.isLoading;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: TextField(
            controller: controller,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              labelText: 'Product',
              hintText: 'Search',
              suffixIcon: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                onPressed: () =>
                    Provider.of<ProductProvider>(context, listen: false)
                        .getData(),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: Consumer<ProductProvider>(
            builder: (context, value, child) {
              return true
                  ? Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child:
                            Lottie.asset('assets/lotties/loading_product.json'),
                      ),
                    )
                  : ListView.builder(
                      itemBuilder: (context, index) {
                        print(value.list[index].title);
                        return ListTile(
                          title: Text(value.list[index].title),
                        );
                      },
                      itemCount: value.list.length,
                    );
            },
          ),
        ),
      ],
    );
  }
}
