import 'package:tarefas_clean_architecture/layers/tarefas/data/datasources/get_all_tarefas_datasource.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';

class GetAllTarefasLocalDataSourceImp implements GetAllTarefasDataSource {
  @override
  List<TarefaEntity> call() {
    List<TarefaEntity> tarefas = [
      TarefaEntity(
        descricao: "Tarefa 1",
        data: DateTime.now(),
      ),
      TarefaEntity(
        descricao: "Tarefa 2",
        data: DateTime.now(),
      ),
      TarefaEntity(
        descricao: "Tarefa 3",
        data: DateTime.now(),
      ),
    ];

    return tarefas;
  }
}
