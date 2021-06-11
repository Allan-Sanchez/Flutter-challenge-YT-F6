import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('List Scroll Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _ButtonPage(
                name: 'List Scroll',
                routeName: 'listscroll/home',
              ),
              _ButtonPage(
                name: 'Coffe App',
                routeName: 'coffe/home',
              ),
            ],
          ),
        ));
  }
}

class _ButtonPage extends StatelessWidget {
  final String name;
  final String routeName;

  const _ButtonPage({Key? key, required this.name, required this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 15.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: ElevatedButton(
            child: Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 40.0),
            ),
            onPressed: () {
              Navigator.pushNamed(context, routeName);
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              backgroundColor: Colors.indigo[400],
            ),
          ),
        ));
  }
}
