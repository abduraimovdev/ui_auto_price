import 'package:clean_architekture/presentation/pages/products_page.dart';
import 'package:flutter/material.dart';

class RunApp extends StatefulWidget {
  const RunApp({super.key});

  @override
  State<RunApp> createState() => _RunAppState();
}

class _RunAppState extends State<RunApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AllProductsPage(),
    );
  }
}
