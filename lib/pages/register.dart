import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  bool _privacyPolicy = false;

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
                'Sign Up',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nama',
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
                    return 'Nama harus diisi';
                  }

                  return null;
                },
              ),
              const SizedBox(height: 10.0),
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

                  return null;
                },
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Checkbox(
                    value: _privacyPolicy,
                    onChanged: (value) => setState(() {
                      if (_privacyPolicy) {
                        _privacyPolicy = false;
                      } else {
                        _privacyPolicy = true;
                      }
                    }),
                    checkColor: Colors.white,
                    activeColor: Colors.red,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text('Saya menyetujui syarat & ketentuan berlaku'),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/halaman-setelah-daftar');
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
                    'BUAT AKUN',
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
                  Text('Sudah punya akun? '),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Login',
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
