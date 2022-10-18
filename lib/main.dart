import 'package:flutter/material.dart';
import 'package:fluxstore/services/providers/product_provider.dart';
import 'package:provider/provider.dart';
import './pages/pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fluxstore',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: SplashScreen.route,
        routes: {
          SplashScreen.route: (_) => const SplashScreen(),
          HomeScreen.route: (_) => const HomeScreen(),
        },
      ),
    );
  }
}
