import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/realizar_tarefa_repository.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/ralizar_tarefa/realizar_tarefa_usecase.dart';

class RealizarTarefaUseCaseImp implements RealizarTarefaUseCase {
  final RealizarTarefaRepository _realizarTarefaRepository;
  RealizarTarefaUseCaseImp(this._realizarTarefaRepository);
  @override
  Future<bool> call(TarefaEntity tarefa) {
    return _realizarTarefaRepository(tarefa);
  }
}
