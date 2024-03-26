import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/add_tarefa/add_tarefa_usecase.dart';

class AddTarefaUseCaseImp implements AddTarefaUseCase {
  @override
  TarefaEntity addTarefa(TarefaEntity tarefaEntity) {
    return tarefaEntity;
  }
}
