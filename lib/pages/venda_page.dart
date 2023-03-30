import 'package:flutter/material.dart';
import 'package:fornecedores_app/components/sideBarMenu.dart';

class VendaPage extends StatefulWidget {
  const VendaPage({super.key});

  @override
  State<VendaPage> createState() => _VendaPageState();
}

class _VendaPageState extends State<VendaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [Text('Página de Venda')],
      ),
    );
  }
}
