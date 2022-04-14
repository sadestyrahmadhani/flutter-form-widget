import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  prefixIcon: Icon(Icons.mail_outline, color: Colors.red),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Email harus diisi';
                  }

                  return null;
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  prefixIcon: Icon(Icons.lock_outline, color: Colors.red),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                obscureText: true,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Password harus diisi';
                  }

                  return 'Password tidak sesuai';
                },
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Checkbox(
                          value: _rememberMe,
                          onChanged: (value) => setState(() {
                            if (_rememberMe) {
                              _rememberMe = false;
                            } else {
                              _rememberMe = true;
                            }
                          }),
                          checkColor: Colors.white,
                          activeColor: Colors.red,
                        ),
                        Text('Remember Me'),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/forgot-password');
                      },
                      child: Text('Forgot Password?', style: TextStyle(color: Colors.blue.shade900)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8.0),
              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) ;
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
                    'LOGIN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Belum punya akun? '),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
