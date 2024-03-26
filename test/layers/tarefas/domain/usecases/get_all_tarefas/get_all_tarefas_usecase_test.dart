import 'package:flutter_test/flutter_test.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/get_all_tarefas_repository.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/get_all_tarefas/get_all_tarefas_usecase.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/get_all_tarefas/get_all_tarefas_usecase_imp.dart';

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

main() {
  GetAllTarefasUseCase useCase = GetAllTarefasUseCaseImp(
    GetAllTarefasRepositoryImp(),
  );
  var result = useCase();

  test("Deve retornar uma lista de tarefas", () {
    expect(result, isInstanceOf<List<TarefaEntity>>());
  });

  test("Deve retornar uma lista de 3 tarefas", () {
    var result = useCase();
    expect(result.length, 3);
  });
}
