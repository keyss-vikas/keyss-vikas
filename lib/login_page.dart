import 'package:flutter/material.dart';

class LoginPageDemo extends StatefulWidget {
  const LoginPageDemo({Key? key}) : super(key: key);

  @override
  State<LoginPageDemo> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<LoginPageDemo> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.all(1),
        child: ListView(children: <Widget>[
          Container(
              child: // Image.asset('assets/images/img.png'),
                  const Image(
            image: AssetImage(
              'images/img.png',
            ),
            width: 200,
            height: 240,
          )),
          Container(
            child: const Text(
              'Login to Your Account',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(0),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: const TextField(
              // controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
            child: TextFormField(
              obscureText: false,
              // controller: passwordController,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text(
                  'Remember me',
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text(
                  'Forgot Password',
                ),
              ),
            ],
          ),
          RaisedButton(
            color: Colors.blueAccent,
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 20.0,
            ),
            child: const Text(
              'SIGN IN',

              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            onPressed: () {
              //signup screen
            },
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: const Center(
              child: Text(
                'OR',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(200, 90, 94, 102)),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          Container(
            child: RaisedButton(
              color: Colors.green,
              padding: EdgeInsets.only(top: 20, bottom: 20.0),
              child: const Text(
                ' SIGN IN USING ONE TIME PASSWORD',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () {
                //signup screen
              },
            ),
          ),
        ]));
  }
}
