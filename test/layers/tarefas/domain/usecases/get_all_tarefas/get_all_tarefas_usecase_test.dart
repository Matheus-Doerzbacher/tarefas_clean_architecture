import 'package:flutter_test/flutter_test.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/datasources/local/get_all_tarefas_local_datasource_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/repositories/get_all_repository_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/get_all_tarefas/get_all_tarefas_usecase.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/get_all_tarefas/get_all_tarefas_usecase_imp.dart';

main() {
  GetAllTarefasUseCase useCase = GetAllTarefasUseCaseImp(
    GetAllTarefasRepositoryImp(
      GetAllTarefasLocalDataSourceImp(),
    ),
  );
  var result = useCase();

  test("Deve retornar uma lista de tarefas", () {
    expect(result, isInstanceOf<List<TarefaEntity>>());
  });
}
