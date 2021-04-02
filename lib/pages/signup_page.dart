import 'package:flutter/material.dart';
import 'package:flutter_application/utils/routes.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();

  moveToLogin(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      Navigator.pushNamed(context, MyRoutes.loginRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      // autovalidateMode: (AutovalidateMode.always),
      key: _formKey,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/logo.png",
                    height: 200.0,
                    width: 200.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Create an Account",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),

                            // enabledBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.green),
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.green),
                            // ),
                            hintText: "Enter Full Name",
                            labelText: "Full Name",
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Should not empty";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            // enabledBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.green),
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.green),
                            // ),
                            hintText: "Enter E-Mail ID",
                            labelText: "E-Mail ID",
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                        Pattern pattern =
                            r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$';
                        RegExp regex = RegExp(pattern);
                        if (!regex.hasMatch(value)) {
                          return "Invalid E-Mail ID";
                        }
                        return null;
                      },
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            // enabledBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.green),
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.green),
                            // ),
                            hintText: "Enter Mobile Number",
                            labelText: "Mobile Number",
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Should not empty";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            // enabledBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.green),
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.green),
                            // ),
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            // enabledBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.green),
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.green),
                            // ),
                            hintText: "Password Again",
                            labelText: "Confirm Password",
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            side: BorderSide(color: Colors.black),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 138.0),
                          ),
                          onPressed: () => moveToLogin(context),
                          child: Text(
                            "Submit",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
