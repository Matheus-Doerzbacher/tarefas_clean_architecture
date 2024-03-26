import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/favoritar_tarefa.repository.dart';

class FavoritarTarefaRepositoryImp implements FavoritarTarefaRepository {
  @override
  Future<bool> call(TarefaEntity tarefa) async {
    tarefa.alterarFavorito();
    return true;
  }
}
