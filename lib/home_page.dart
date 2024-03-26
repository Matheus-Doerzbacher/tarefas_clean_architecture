import 'package:flutter/material.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/presentation/ui/pages/tarefa_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> paginas = [
    const TarefaPage(
      index: 0,
      titulo: "Meu Dia",
      icon: Icons.wb_sunny_outlined,
      iconColor: Colors.grey,
    ),
    TarefaPage(
      index: 1,
      titulo: "Tarefas",
      icon: Icons.format_list_numbered,
      iconColor: Colors.green[700]!,
    ),
    TarefaPage(
      index: 2,
      titulo: "Favoritos ",
      icon: Icons.star_border,
      iconColor: Colors.yellow[800]!,
    ),
    TarefaPage(
      index: 3,
      titulo: "Compras",
      icon: Icons.shopping_cart_outlined,
      iconColor: Colors.pink[100]!,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    "Minhas Tarefas",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "By: Matheus Doerzbacher",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Row(
          children: <Widget>[
            NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              destinations: <NavigationRailDestination>[
                const NavigationRailDestination(
                  icon: Icon(
                    Icons.wb_sunny_outlined,
                    color: Colors.grey,
                  ),
                  selectedIcon: Icon(
                    Icons.wb_sunny,
                    color: Colors.grey,
                  ),
                  label: Text('Meu dia'),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.format_list_numbered,
                    color: Colors.green[700],
                  ),
                  selectedIcon: Icon(
                    Icons.format_list_numbered,
                    color: Colors.green[700],
                  ),
                  label: const Text('Tarefas'),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.star_border,
                    color: Colors.yellow[800],
                  ),
                  selectedIcon: Icon(
                    Icons.star,
                    color: Colors.yellow[800],
                  ),
                  label: const Text('Favoritos'),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.pink[100],
                  ),
                  selectedIcon: Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.pink[100],
                  ),
                  label: const Text('Favoritos'),
                ),
              ],
            ),
            Expanded(child: paginas[_selectedIndex]),
          ],
        ),
      ),
    );
  }
}
