import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/login': (context) => LogInRoute(),
        '/register': (context) => RegisterRoute(),
      },
    );
  }
}

// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Launch screen'),
//           onPressed: () {
//             // Navigate to the second screen using a named route.
//             Navigator.pushNamed(context, '/second');
//           },
//         ),
//       ),
//     );
//   }
// }

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Body()),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.flash_on,
                size: 60,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Text Flash',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            child: RaisedButton(
              color: Colors.cyan,
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Hero(
                tag: 'login',
                child: Text(
                  'login',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1000),
              ),
            ),
            width: 300,
            height: 50,
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            child: RaisedButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text(
                'register',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1000),
              ),
            ),
            width: 300,
            height: 50,
          ),
        ],
      ),
    );
  }
}

class LogInRoute extends StatelessWidget {
  final String text = 'login';
  final String tag = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: tag,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('log in'),
      ),
    );
  }
}

class RegisterRoute extends LogInRoute {
  @override
  final String text = 'register';
  final String tag = 'register';

}
