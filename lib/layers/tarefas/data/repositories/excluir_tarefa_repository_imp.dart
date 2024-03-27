import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/excluir_tarefa_repository.dart';

class ExcluirTarefaRepositoryImp implements ExcluirTarefaRepository {
  @override
  Future<bool> call(TarefaEntity tarefa) async {
    return tarefa.descricao.isNotEmpty;
  }
}
