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
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              labelText: 'Product',
              hintText: 'Search',
              suffixIcon: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child:
              // Provider.of<ProductProvider>(context, listen: false).isLoading
              true
                  ? Center(
                      child: Lottie.asset(
                        'assets/lotties/splash_screen.json',
                        height: 200,
                      ),
                    )
                  : ListView.builder(
                      itemBuilder: (context, index) {
                        return Container();
                      },
                      itemCount: 0,
                    ),
        ),
      ],
    );
  }
}
