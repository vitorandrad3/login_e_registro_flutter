import 'package:flutter/material.dart';

import '../../controllers/login_controller.dart';

class CustomLoginButtom extends StatelessWidget {
  const CustomLoginButtom({super.key, required this.formkey});
  final GlobalKey<FormState> formkey;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: LoginController.loginController.inLoader,
      builder: (____, inLoader, ___) {
        return inLoader
            ? ElevatedButton(
                onPressed: () async {
                  bool isValid = formkey.currentState!.validate();
                  if (isValid) {
                    if (await LoginController.loginController
                        .authentication()) {
                      // ignore: use_build_context_synchronously
                      Navigator.pushReplacementNamed(context, '/homepage');
                    } else {
                      // ignore: use_build_context_synchronously
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Email ou senha inválidos'),
                        ),
                      );
                    }
                  }
                },
                child: const Text('login'),
              )
            : const CircularProgressIndicator();
      },
    );
  }
}
