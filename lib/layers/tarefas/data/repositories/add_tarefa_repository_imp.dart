import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/add_tarefa_repository.dart';

class AddTarefaRepositoryImp implements AddTarefaRepository {
  @override
  Future<bool> call(TarefaEntity tarefa) async {
    return tarefa.descricao.isNotEmpty;
  }
}
