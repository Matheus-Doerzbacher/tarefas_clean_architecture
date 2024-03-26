import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/add_tarefa_repository.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/add_tarefa/add_tarefa_usecase.dart';

class AddTarefaUseCaseImp implements AddTarefaUseCase {
  final AddTarefaRepository _addTarefaRepository;

  AddTarefaUseCaseImp(this._addTarefaRepository);

  @override
  Future<bool> call(TarefaEntity tarefaEntity) async {
    if (tarefaEntity.descricao.isEmpty) {
      return false;
    }

    return await _addTarefaRepository(tarefaEntity);
  }
}
