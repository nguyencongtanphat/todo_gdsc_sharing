import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(32),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0),
        ),
        color: Colors.yellow,
      ),
      child: Stack(children: const [
        Positioned(
          bottom: 0,
          left: 32,
          child: Text(
            "Todo App",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        Positioned(
          top: 20,
          child: Icon(
            Icons.menu,
            size: 32,
          ),
        )
      ]),
    );
  }
}
