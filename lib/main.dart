import 'package:flutter/material.dart';
import 'signup.dart';
import 'loginberhasil.dart';

void main() {
  runApp(MaterialApp(
    title: "Belajar Membuat Form ",
    home: BelajarForm(),
  ));
}

class BelajarForm extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();
  double nilaiSlider = 1;
  bool nilaiCheckBox = false;
  bool nilaiSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
        backgroundColor: Colors.pink[800],
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SourceSansPro',
                    color: Colors.pink[900],
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200,
                  child: Divider(
                    color: Colors.pink[900],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: "wendy",
                      labelText: "Nama Lengkap",
                      labelStyle: TextStyle(color: Colors.pink[800]),
                      icon: Icon(Icons.perm_identity, color: Colors.pink[800]),
                      enabledBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.pink)),
                      focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.pink)),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: new InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.pink[800]),
                      icon: Icon(Icons.lock, color: Colors.pink[800]),
                      enabledBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.pink)),
                      focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.pink)),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Password tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                RaisedButton(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.pink[900],
                  onPressed: () {
                    if (_formKey.currentState!.validate())
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return LoginBerhasil();
                        }),
                      );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                ),
                FlatButton(
                  child: Text(
                    'Create Account',
                    style: TextStyle(color: Colors.black54),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Signup();
                      }),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
