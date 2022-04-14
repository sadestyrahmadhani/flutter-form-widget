import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formKey = GlobalKey<FormState>();

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
                'Reset Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'New Password',
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
                    return 'New Password harus diisi';
                  }

                  return null;
                },
              ),
              const SizedBox(height: 15.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Confirm New Password',
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
                    return 'Confirm New Password harus diisi';
                  }

                  return null;
                },
              ),
              const SizedBox(height: 20.0),
              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/reset-success');
                  }
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
                    'RESET PASSWORD',
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
      ),
    );
  }
}
