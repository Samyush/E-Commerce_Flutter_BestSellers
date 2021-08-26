import 'package:best_sellers/Category_Section/categorySection.dart';
import 'package:best_sellers/screens/bottomNav/bottomNavs.dart';
import 'package:best_sellers/screens/categories/categories.dart';
import 'package:best_sellers/screens/details/details_screen.dart';
import 'package:best_sellers/screens/home/home_screen.dart';
import 'package:best_sellers/screens/sign_in/sign_in_screen.dart';
import 'package:best_sellers/screens/sign_up/sign_up_screen.dart';
import 'package:best_sellers/screens/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  Categories.routeName: (context) => CategorySection(),
  BottomNavigation.routeName: (context) => BottomNavigation(),
  DetailsScreen.routeName: (context) => DetailsScreen(),

  /* ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),*/
};
