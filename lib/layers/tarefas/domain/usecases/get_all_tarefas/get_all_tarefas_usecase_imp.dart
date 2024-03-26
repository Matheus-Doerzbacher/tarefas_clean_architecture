import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/get_all_tarefas/get_all_tarefas_usecase.dart';

class GetAllTarefasUseCaseImp implements GetAllTarefasUseCase {
  @override
  List<TarefaEntity> call() {
    List<TarefaEntity> tarefas = [
      TarefaEntity(
        descricao: "Tarefa 1",
        data: DateTime.now(),
        realizado: false,
      ),
      TarefaEntity(
        descricao: "Tarefa 2",
        data: DateTime.now(),
        realizado: false,
      ),
      TarefaEntity(
        descricao: "Tarefa 3",
        data: DateTime.now(),
        realizado: false,
      ),
    ];
    return tarefas;
  }
}
