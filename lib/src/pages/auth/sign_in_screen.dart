import 'package:flutter/material.dart';
import 'package:prototipo/src/pages/common_widgets/custom_text_field.dart';
import 'package:prototipo/src/pages/base/base_screen.dart';
import 'package:prototipo/src/config/custom_colors.dart';
import 'package:prototipo/src/pages/auth/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey, // Example color
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Align(
            alignment: Alignment.centerLeft,
            child: ColoredBox(
              color: Colors.black,
              child: SizedBox(
                width: constraints.maxWidth * 0.8, // 80% of the screen width
                height: constraints.maxHeight, // 100% of the screen height
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: size.height,
                    width: size.width,
                    child: Column(
                      children: [
                        const Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Nome do app
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: Column(
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        style: TextStyle(
                                          fontSize: 40,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'PNEU',
                                            style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '02°',
                                            style: TextStyle(
                                              color: Colors.yellow,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                        // Formulário
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 40,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(45),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              // Email
                              const CustomTextField(
                                icon: Icons.email,
                                label: 'Email',
                              ),

                              // Senha
                              const CustomTextField(
                                icon: Icons.lock,
                                label: 'Senha',
                                isSecret: true,
                              ),

                              // Entrar
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: SizedBox(
                                  height: 70,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.yellow,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40))),
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(builder: (c) {
                                        return const BaseScreen();
                                      }));
                                    },
                                    child: const Text(
                                      'Entrar',
                                      style: TextStyle(
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // Divisor
                              const Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: Colors.white,
                                      thickness: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      'OU',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      color: Colors.white,
                                      thickness: 2,
                                    ),
                                  ),
                                ],
                              ),

                              // Botão de novo usuário
                              SizedBox(
                                height: 80,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      side: const BorderSide(
                                        width: 4,
                                        color: Colors.yellow,
                                      )),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (c) {
                                        return SignUpScreen();
                                      }),
                                    );
                                  },
                                  child: const Text(
                                    'Criar conta',
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ),
                              // Esqueceu a senha
                              Align(
                                alignment: Alignment.centerLeft,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Esqueceu a senha?',
                                    style: TextStyle(
                                      color: CustomColors.customContrastColor,
                                    ),
                                  ),
                                ),
                              ),
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
        },
      ),
    );
  }
}
