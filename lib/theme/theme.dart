import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: const Color(0xFF1E1E1E),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(
      color: Color(0xFFEEEEEF)
    ),
    scrolledUnderElevation: 0,
    color: Color(0xFF1E1E1E),
    titleTextStyle: TextStyle(color:Colors.white, fontSize: 22)
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: const Color(0xFF1E1E1E),
    unselectedIconTheme: const IconThemeData(
      color: Colors.white10,
      
    ),
    unselectedLabelStyle: const TextStyle(color: Colors.white10),
    unselectedItemColor: Colors.white10,
    selectedIconTheme: IconThemeData(
      color: Colors.blue[200]
    ),
    selectedItemColor: Colors.blue[200],
    selectedLabelStyle: TextStyle(color: Colors.blue[200])
  ),
  iconTheme: const IconThemeData(
    color: Colors.white
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Color(0xFF1E1E1E),
    elevation: 3,
    scrimColor: Colors.black45
  ),

  textTheme: const TextTheme(
    labelLarge:TextStyle(color: Color(0xFFEEEEEF))
  )

);


final lightTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: const Color(0xFFEEEEEF),
  appBarTheme: const AppBarTheme(
     iconTheme: IconThemeData(
      color: Color(0xFF1E1E1E)
    ),
    scrolledUnderElevation: 0,
    color: Color(0xFFEEEEEF),
    titleTextStyle: TextStyle(color:Colors.black87, fontSize: 22)
  ),
  
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: const Color(0xFFEEEEEF),
    unselectedIconTheme: const IconThemeData(
      color: Colors.black12,
      
    ),
    unselectedLabelStyle: const TextStyle(color: Colors.white10),
    unselectedItemColor: Colors.black12,
    selectedIconTheme: IconThemeData(
      color: Colors.blue[300]
    ),
    selectedItemColor: Colors.blue[300],
    selectedLabelStyle: TextStyle(color: Colors.blue[300])
  ),
  iconTheme: const IconThemeData(
    color: Colors.black26
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Color(0xFFEEEEEF),
    elevation: 3,
    scrimColor: Colors.white54,
  ),
  textTheme: const TextTheme(
    labelLarge:TextStyle(color: Color(0xFF1E1E1E))
  )
);