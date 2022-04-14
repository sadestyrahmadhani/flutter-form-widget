import 'package:flutter/material.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/reset-password');
              },
              child: Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
            top: 10,
            right: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Check your email',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15.0),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt nec tortor eu sagittis.',
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
