import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:expense_tracker_iii/widgets/expenses.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 177, 45, 201));
var kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 7, 85, 85),
  brightness: Brightness.dark,
);

void main() {
  /*WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => */
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // Add the dark theme
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          elevation: BorderSide.strokeAlignOutside,
          margin: const EdgeInsets.all(10),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: kDarkColorScheme.primaryContainer,
            backgroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
      ),

      // Add the light theme
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: CardTheme(
          color: kColorScheme.secondaryContainer,
          elevation: BorderSide.strokeAlignOutside,
          margin: const EdgeInsets.all(10),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: kColorScheme.onPrimaryContainer,
            backgroundColor: kColorScheme.primaryContainer,
            elevation: 5,
            shadowColor: kColorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                color: kColorScheme.primaryContainer,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              bodyLarge: TextStyle(
                color: kColorScheme.onPrimaryContainer,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
              bodyMedium: TextStyle(
                color: kColorScheme.onPrimaryContainer,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
      ),
      themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
