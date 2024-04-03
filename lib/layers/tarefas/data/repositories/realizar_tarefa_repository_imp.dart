import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/realizar_tarefa_repository.dart';

class RealizarTarefaRepositoryImp implements RealizarTarefaRepository {
  @override
  Future<bool> call(TarefaEntity tarefa) async {
    tarefa.alterarRealizado();
    if (tarefa.favorita == true) {
      tarefa.alterarFavorito();
    }
    return true;
  }
}
