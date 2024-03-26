import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/favoritar_tarefa.repository.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/favoritar_tarefa/favoritar_tarefa_usecase.dart';

class FavoritarTarefaUseCaseImp implements FavoritarTarefaUseCases {
  final FavoritarTarefaRepository _favoritarTarefaRepository;
  FavoritarTarefaUseCaseImp(this._favoritarTarefaRepository);

  @override
  Future<bool> call(TarefaEntity tarefa) {
    return _favoritarTarefaRepository(tarefa);
  }
}
