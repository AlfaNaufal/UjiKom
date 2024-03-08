import 'package:flutter/material.dart';
import 'package:ukom_app/constant/color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const String routes = '/login_page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? visible = true;
  final _formkey = GlobalKey<FormState>();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          backgroundColor: bgcolor,
          resizeToAvoidBottomInset: false,
          body: GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Column(
              children: [bodyView(), footer()],
            ),
          ),
        ));
  }

  Widget bodyView() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              // height: MediaQuery.of(context).size.height,
              alignment: Alignment.center,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Nama",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(100))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              // height: MediaQuery.of(context).size.height,
              alignment: Alignment.center,
              child: TextFormField(
                controller: passwordController,
                obscureText: visible!,
                obscuringCharacter: '●',
                style: TextStyle(),
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(100)),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visible = !visible!;
                        });
                      },
                      icon: visible == false
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off)),
                ),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(onPressed: () {}, child: Text('Login'))),
          ],
        ),
      ),
    );
  }

  Widget footer() {
    return Container();
  }
}
