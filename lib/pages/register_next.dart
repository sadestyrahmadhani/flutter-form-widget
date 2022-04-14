import 'package:flutter/material.dart';

class RegisterNext extends StatelessWidget {
  const RegisterNext({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/login');
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
                  'Thank you for registering',
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
                const SizedBox(height: 20.0),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    constraints: const BoxConstraints(
                      minWidth: 88.0,
                      minHeight: 36.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'LOGIN KE AKUN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
