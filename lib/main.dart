import 'package:codealpha_random_quote_generator/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const QuoteApp());
}
 class QuoteApp extends StatefulWidget {
   const QuoteApp({super.key});

   @override
   State<QuoteApp> createState() => _QuoteAppState();
 }

 class _QuoteAppState extends State<QuoteApp> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         colorScheme:
           ColorScheme.fromSeed(seedColor: Colors.indigo),
         useMaterial3: true,
         appBarTheme: AppBarTheme(
           centerTitle: true,
           backgroundColor: Colors.blueAccent.shade100,
         )
       ),
       home: HomeScreen(),
     );
   }
 }

