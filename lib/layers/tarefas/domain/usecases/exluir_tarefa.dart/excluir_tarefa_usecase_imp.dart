import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/excluir_tarefa_repository.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/exluir_tarefa.dart/excluir_tarefa_usecase.dart';

class ExcluirTarefaUseCaseImp implements ExcluirTarefaUseCase {
  final ExcluirTarefaRepository _excluirTarefaRepository;

  ExcluirTarefaUseCaseImp(this._excluirTarefaRepository);

  @override
  Future<bool> call(TarefaEntity tarefaEntity) async {
    if (tarefaEntity.descricao.isEmpty) {
      return false;
    }

    return await _excluirTarefaRepository(tarefaEntity);
  }
}
