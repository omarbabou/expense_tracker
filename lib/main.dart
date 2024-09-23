import 'package:flutter/material.dart';
/* import 'package:flutter/services.dart';*/
import 'package:expense_tracker/widgets/expenses.dart';

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

void main() {
/*   WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((fn) { */
      runApp(
          MaterialApp(
            themeMode: ThemeMode.dark, // Force dark theme

            // Dark Theme
            darkTheme: ThemeData.from(
              colorScheme: kDarkColorScheme,
            ).copyWith(
              appBarTheme: AppBarTheme(
                backgroundColor: kDarkColorScheme.primary,
                foregroundColor: kDarkColorScheme.onPrimary, 
              ),
              cardTheme: CardTheme(
                color: kDarkColorScheme.secondaryContainer,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kDarkColorScheme.primaryContainer,
                ),
              ),
              textTheme: TextTheme(
                titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kDarkColorScheme.onSecondaryContainer,
                  fontSize: 16,
                ),
              ),
            ),
            theme: ThemeData.light().copyWith(
              colorScheme: kColorScheme,
              appBarTheme: const AppBarTheme().copyWith(
                  backgroundColor: kColorScheme.onPrimaryContainer,
                  foregroundColor: kColorScheme.primaryContainer),
              cardTheme: const CardTheme().copyWith(
                color: kColorScheme.secondaryContainer,
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kColorScheme.primaryContainer,
                ),
              ),
              textTheme: const TextTheme().copyWith(
                titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kColorScheme.onSecondaryContainer,
                  fontSize: 16,
                ),
              ),
            ),

            home: const Expenses(),
          ),
        );
/*     }); */
  
} 
