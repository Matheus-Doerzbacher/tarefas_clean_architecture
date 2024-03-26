import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/presentation/controllers/tarefa_controller.dart';

class TarefaPage extends StatelessWidget {
  TarefaPage({super.key});

  final TarefaController controller = GetIt.I.get<TarefaController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: controller.tarefas.length,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(controller.tarefas[index].descricao),
              ],
            );
          },
        ),
      ),
    );
  }
}
