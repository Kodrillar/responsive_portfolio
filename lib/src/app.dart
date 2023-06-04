import 'package:flutter/material.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/error_view.dart';
import 'package:portfolioapp_by_the_debo/src/core/widgets/loader.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_strings.dart';
import 'package:portfolioapp_by_the_debo/src/res/bim_theme.dart';
import 'package:portfolioapp_by_the_debo/src/ui/screens/portfolio_screen.dart';

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  late Future<void> loadStrings;

  @override
  void initState() {
    super.initState();
    loadStrings = BimStrings.instance.loadStrings(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PortfolioApp',
      debugShowCheckedModeBanner: false,
      theme: BimGraphTheme.getTheme(),
      home: FutureBuilder(
        future: loadStrings,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            debugPrint(snapshot.error.toString());
            return const ErrorView();
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Loader();
          }

          return const PortfolioScreen();
        },
      ),
    );
  }
}
