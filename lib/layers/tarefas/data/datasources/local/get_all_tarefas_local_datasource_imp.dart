import 'package:intl/intl.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/datasources/get_all_tarefas_datasource.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';

class GetAllTarefasLocalDataSourceImp implements GetAllTarefasDataSource {
  @override
  List<TarefaEntity> call() {
    final data =
        DateTime.parse(DateFormat("yyyy-MM-dd").format(DateTime.now()));
    List<TarefaEntity> tarefas = [
      TarefaEntity(
        descricao: "Tarefa 1",
        data: data,
      ),
      TarefaEntity(
        descricao: "Tarefa 2",
        data: DateTime.parse("2024-03-25 00:00:00.000"),
      ),
      TarefaEntity(
        descricao: "Tarefa 3",
        data: data,
      ),
      TarefaEntity(
        descricao: "Tarefa 4",
        data: data,
        compra: true,
      ),
    ];

    return tarefas;
  }
}
