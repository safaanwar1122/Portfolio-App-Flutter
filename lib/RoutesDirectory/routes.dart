import 'dart:js';

import 'package:flutter/material.dart';
import 'package:portfolio_app/RoutesDirectory/routes_names.dart';

import '../Pages/home_screen.dart';
import '../Pages/portfolio_screen.dart';
import '../Pages/project_screen.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context)=>HomeScreen());
      case RouteName.portfolioScreen:
        return MaterialPageRoute(builder: (context)=>PortfolioScreen());
      case RouteName.projectScreen:
        return MaterialPageRoute(builder: (context)=>ProjectScreen());
      default:
        return MaterialPageRoute(builder: (context){
          return Scaffold(
            body: Center(
              child: Text(
                'No routes define'
              ),
            ),
          );
        });
    }
  }
}