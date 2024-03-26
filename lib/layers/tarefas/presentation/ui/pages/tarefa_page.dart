import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/datasources/local/get_all_tarefas_local_datasource_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/repositories/add_tarefa_repository_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/repositories/get_all_repository_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/add_tarefa/add_tarefa_usecase_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/get_all_tarefas/get_all_tarefas_usecase_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/presentation/controllers/tarefa_controller.dart';

class TarefaPage extends StatelessWidget {
  TarefaPage({super.key});

  final TarefaController controller = TarefaController(
    GetAllTarefasUseCaseImp(
      GetAllTarefasRepositoryImp(
        GetAllTarefasLocalDataSourceImp(),
      ),
    ),
    AddTarefaUseCaseImp(
      AddTarefaRepositoryImp(),
    ),
  );

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
