import 'package:flutter/material.dart';
import 'package:novo_projeto/models/user_list.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _mail;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Registre-se',
                  style: TextStyle(fontSize: 35),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.3,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.88,
                        child: TextFormField(
                          validator: (value) =>
                              value!.isEmpty ? 'informe o nome' : null,
                          onSaved: (value) => _name = value,
                          decoration: const InputDecoration(
                            label: Text('Nome:'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.88,
                        child: TextFormField(
                          validator: (value) =>
                              value!.isEmpty ? 'informe o E-mail' : null,
                          onSaved: (value) => _mail = value,
                          decoration: const InputDecoration(
                            label: Text('E-mail:'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.88,
                        child: TextFormField(
                          validator: (value) =>
                              value!.isEmpty ? 'informe a senha' : null,
                          onSaved: (value) => _password = value,
                          obscureText: true,
                          decoration: const InputDecoration(
                            label: Text('Senha:'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 35),
                      ElevatedButton(
                          onPressed: () {
                            bool isValid = _formKey.currentState!.validate();
                            if (isValid) {
                              _formKey.currentState!.save();
                              setUser(
                                  name: _name,
                                  mail: _mail,
                                  password: _password);
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content:
                                      Text('Conta cadastrada com Sucesso.'),
                                ),
                              );
                              Navigator.pop(context);
                            }
                          },
                          child: const Text('Registrar'))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
