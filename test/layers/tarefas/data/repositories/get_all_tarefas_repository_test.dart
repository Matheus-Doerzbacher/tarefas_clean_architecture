import 'package:flutter_test/flutter_test.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/datasources/local/get_all_tarefas_local_datasource_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/repositories/get_all_repository_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/get_all_tarefas_repository.dart';

void main() {
  GetAllTarefasRepository repository = GetAllTarefasRepositoryImp(
    GetAllTarefasLocalDataSourceImp(),
  );

  test("Deve retornar uma lista de tarefas", () {
    var result = repository();

    expect(result, isNotNull);
  });
}
