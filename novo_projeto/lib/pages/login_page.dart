import 'package:flutter/material.dart';
import 'package:novo_projeto/components/login/custom_login_buttom.dart';
import 'package:novo_projeto/controllers/login_controller.dart';
import 'package:novo_projeto/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const Text(
                  'Login',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      CustomTextField(
                          label: 'E-mail',
                          onChanged: LoginController.loginController.setMail),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025),
                      CustomTextField(
                          obscureText: true,
                          label: 'Senha',
                          onChanged:
                              LoginController.loginController.setPassword),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                CustomLoginButtom(formkey: _formkey),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: const Divider(
                    thickness: 1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'não tem uma conta ainda? ',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/registerpage');
                        },
                        child: const Text('Cadastre-se.'))
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
