//import 'package:flutter_demo/main.dart';
//import 'package:flutter_demo/models/category_model.dart';
//import 'package:flutter_demo/models/product_model.dart';
//import 'package:flutter_demo/pages/cart/cart_page.dart';
//import 'package:flutter_demo/pages/home/home_page.dart';
//import 'package:flutter_demo/pages/navigator/navigator_page.dart';
//import 'package:flutter_demo/pages/product/product_detail_page.dart';
//import 'package:flutter_demo/pages/product/product_page.dart';
//import 'package:flutter_demo/pages/search/search_page.dart';
//import 'package:flutter/material.dart';
//
//class Routes {
//  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
//    switch (settings.name) {
//      case NavigatorPage.routeName:
//        return MaterialPageRoute(builder: (_) => NavigatorPage(), settings: settings);
//      case HomePage.routeName:
//        ScrollController scrollController = settings.arguments as ScrollController;
//        return MaterialPageRoute(builder: (_) => HomePage(scrollController), settings: settings);
//
//      case ProductPage.routeName:
//        CategoryModel categoryModel = settings.arguments as CategoryModel;
//        return MaterialPageRoute(builder: (_) => ProductPage(category: categoryModel), settings: settings);
//      case ProductDetailPage.routeName:
//        ProductModel productModel = settings.arguments as ProductModel;
//        return MaterialPageRoute(builder: (_) => ProductDetailPage(productModel), settings: settings);
//
//      case CartPage.routeName:
//        return MaterialPageRoute(builder: (_) => CartPage(), settings: settings);
//
//      case CartPage.routeName:
//        return MaterialPageRoute(builder: (_) => CartPage(), settings: settings);
//
//      case ProductDetailPage.routeName:
//        ProductModel productModel = settings.arguments as ProductModel;
//        return MaterialPageRoute(builder: (_) => ProductDetailPage(productModel), settings: settings);
//
//      case SearchPage.routeName:
//        return MaterialPageRoute(builder: (_) => SearchPage(), settings: settings);
//      default:
//        return MaterialPageRoute(builder: (_) => LoadingScreen(), settings: settings);
//    }
//  }
//}
//
//class MyRouteObserver extends RouteObserver<PageRoute<dynamic>> {
//  static String currentRoute = 'loading';
//
//  static void onRouteChange(PageRoute route) {
//    currentRoute = route.settings.name;
//    print(currentRoute);
//  }
//
//  @override
//  void didPop(Route route, Route previousRoute) {
//    super.didPop(route, previousRoute);
//    // TODO: implement didPop
//    print('[pop]');
//    onRouteChange(previousRoute);
//  }
//
//  @override
//  void didPush(Route route, Route previousRoute) {
//    super.didPush(route, previousRoute);
//    // TODO: implement didPush
//    print('[push]');
//    onRouteChange(route);
//  }
//
//  @override
//  void didReplace({Route newRoute, Route oldRoute}) {
//    super.didReplace();
//    // TODO: implement didReplace
//    print('[replace]');
//    onRouteChange(newRoute);
//  }
//}
