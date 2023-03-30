import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:fornecedores_app/pages/dashoard_page.dart';
import 'package:fornecedores_app/pages/pedido_page.dart';
import 'package:fornecedores_app/pages/venda_page.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({super.key});

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  SideMenuController sideMenu = SideMenuController();
  PageController page = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideMenu(
            controller: sideMenu,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 100, top: 30),
              child: Image.asset('assets/images/cometa_logo.png'),
            ),
            footer: const SideMenuItem(
              priority: 3,
              title: 'Exit',
              //onTap: () {},
              icon: Icon(Icons.exit_to_app),
            ),
            items: [
              SideMenuItem(
                priority: 0,
                title: 'Dashboard',
                onTap: (p, _) {
                  page.jumpToPage(0);
                  sideMenu.changePage(0);
                },
                icon: const Icon(Icons.dashboard),
              ),
              SideMenuItem(
                priority: 1,
                title: 'Vendas',
                onTap: (p, _) {
                  page.jumpToPage(1);
                  sideMenu.changePage(1);
                },
                icon: const Icon(Icons.money),
              ),
              SideMenuItem(
                priority: 2,
                title: 'Pedidos',

                //onTap: page.currentPage.,
                onTap: (p, _) {
                  page.jumpToPage(2);
                  sideMenu.changePage(2);
                },
                icon: const Icon(Icons.fire_truck_rounded),
              ),
            ],
            style: SideMenuStyle(
                selectedColor: Colors.grey.shade400,
                itemOuterPadding: const EdgeInsets.symmetric(vertical: 10)),
          ),
          Expanded(
              child: PageView(
            controller: page,
            children: [
              DashboardPage(),
              VendaPage(),
              PedidoPage(),
            ],
          ))
        ],
      ),
    );
  }
}
