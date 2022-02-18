import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
        ),
        body: Center(
          child: Image.asset('assets/hello.png'),

          /* ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor),
            child: Text('Location Screen',
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: const Color(0xFFFFFFFF))),
            onPressed: () {
              Navigator.pushNamed(context, 'location');
            },
          ), */
        ));
  }
}


/* ElevatedButton(
        style:
            ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor),
        child: Text('Location Screen',
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(color: const Color(0xFFFFFFFF))),
        onPressed: () {
          Navigator.pushNamed(context, 'location');
        },
      ), */