import 'dart:ui';

import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  AuthForm(this.submitFn, this.isLoading);

  final bool isLoading;
   void Function(
    String email,
    String password,
    String username,
    bool isLogin,
    BuildContext context,
  ) submitFn;

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();

  var _isLogin = true;
  var _userEmail = " ";
  var _userName = " ";
  var _password = " ";

  void _trySubmit() {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      _formKey.currentState!.save();
      widget.submitFn(_userEmail.trim(), _password.trim(), _userName.trim(),
          _isLogin, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 50,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      key: const ValueKey("email"),
                      onSaved: (value) {
                        _userEmail = value!;
                      },
                      validator: (value) {
                        if (value!.isEmpty || !value.contains("@")) {
                          return "Please enter proper email address";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        labelText: "Email",
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    if (!_isLogin)
                      TextFormField(
                        key: const ValueKey("username"),
                        onSaved: (value) {
                          _userName = value!;
                        },
                        validator: (value) {
                          if (value!.isEmpty || value.length < 4) {
                            return "Please enter at least 4 characters";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: "Username",
                        ),
                      ),
                    TextFormField(
                      key: const ValueKey("password"),
                      onSaved: (value) {
                        _password = value!;
                      },
                      validator: (value) {
                        if (value!.isEmpty || value.length < 7) {
                          return "Password must be at least 7 characters long";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "Password"),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    if (widget.isLoading) CircularProgressIndicator(),
                    if (!widget.isLoading)
                      RaisedButton(
                        onPressed: _trySubmit,
                        child: Text(_isLogin ? "Login" : "Signup"),
                      ),
                    const SizedBox(
                      height: 20,
                    ),
                    if (!widget.isLoading)
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            _isLogin = !_isLogin;
                          });
                        },
                        child: Text(_isLogin
                            ? "Create New Account"
                            : "I already have an account"),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
