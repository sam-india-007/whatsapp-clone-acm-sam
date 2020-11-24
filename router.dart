import 'package:flutter/material.dart';

import 'main.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/main':
        return MaterialPageRoute(builder: (context) => MainScreen());
      case '/chat':
        return MaterialPageRoute(builder: (context) => ChatScreen());
      case '/welcome':
        return MaterialPageRoute(builder: (context) => WelcomeScreen());
      case '/verify':
        return MaterialPageRoute(builder: (context) => VerifyScreen());
      default:
        return MaterialPageRoute(builder: (context) => MainScreen());
    }
  }

}
