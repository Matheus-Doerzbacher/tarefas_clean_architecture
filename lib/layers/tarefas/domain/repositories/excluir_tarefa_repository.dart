import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';

abstract class ExcluirTarefaRepository {
  Future<bool> call(TarefaEntity tarefa);
}
