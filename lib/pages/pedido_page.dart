import 'package:flutter/material.dart';
import 'package:fornecedores_app/components/sideBarMenu.dart';

class PedidoPage extends StatefulWidget {
  const PedidoPage({super.key});

  @override
  State<PedidoPage> createState() => _PedidoPageState();
}

class _PedidoPageState extends State<PedidoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('Página de Pedidos'));
  }
}
