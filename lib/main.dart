import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shashwatgpt/constants/constants.dart';
import 'package:shashwatgpt/models/models_model.dart';
import 'package:shashwatgpt/providers/chat_provider.dart';
import 'package:shashwatgpt/providers/models_provider.dart';
import 'package:shashwatgpt/screens/chat_screen.dart';
import 'package:shashwatgpt/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

// 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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ModelsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChatProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: scaffoldBackgroundColor,
          appBarTheme: AppBarTheme(color: cardColor),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
