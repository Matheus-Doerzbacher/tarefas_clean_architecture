import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/presentation/controllers/tarefa_controller.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/presentation/ui/widgets/cabecalho_widget.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/presentation/ui/widgets/data_widget.dart';

class TarefaPage extends StatelessWidget {
  final String index;
  TarefaPage({super.key, required this.index});

  final TarefaController controller = GetIt.I.get<TarefaController>();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CabecalhoWidget(
            icon: Icons.wb_sunny_outlined,
            titulo: "Meu Dia",
          ),
          DataWidget(),
        ],
      ),
    );
  }
}
