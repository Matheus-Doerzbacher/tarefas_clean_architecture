import 'package:flutter_test/flutter_test.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/get_all_tarefas_repository.dart';

class GetAllTarefasRepositoryImp implements GetAllTarefasRepository {
  @override
  List<TarefaEntity> call() {
    List<TarefaEntity> tarefas = [
      TarefaEntity(
        descricao: "Tarefa 1",
        data: DateTime.now(),
      ),
      TarefaEntity(
        descricao: "Tarefa 2",
        data: DateTime.now(),
      ),
      TarefaEntity(
        descricao: "Tarefa 3",
        data: DateTime.now(),
      ),
    ];
    return tarefas;
  }
}

void main() {
  GetAllTarefasRepository repository = GetAllTarefasRepositoryImp();

  test("Deve retornar uma lista de tarefas", () {
    var result = repository();

    expect(result, isNotNull);
  });
}
