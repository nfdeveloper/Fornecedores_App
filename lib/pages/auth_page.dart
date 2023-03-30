import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:fornecedores_app/pages/dashoard_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isObscure = false;

  @override
  void initState() {
    super.initState();

    isObscure = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Image.asset('assets/images/cometa_logo.png'),
            Padding(
              padding: const EdgeInsets.only(bottom: 170),
              child: SizedBox(
                height: 30,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 20,
                    //color: Coslors.grey.shade400,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        TypewriterAnimatedText('Gestão de Vendas',
                            speed: const Duration(milliseconds: 75)),
                        TypewriterAnimatedText('Gestão de Pedidos',
                            speed: const Duration(milliseconds: 75)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: TextFormField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    labelText: 'Email',
                  ),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: TextFormField(
                  obscureText: isObscure,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(5),
                      labelText: 'Senha',
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                          icon: Icon(isObscure
                              ? Icons.visibility
                              : Icons.visibility_off))),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: SizedBox(
                height: 50,
                width: 400,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (c) {
                      return const DashboardPage();
                    }));
                  },
                  child: const Text('Entrar'),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    'Não possui acesso? Contate o seu comprador!',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
